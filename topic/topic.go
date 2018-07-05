package topic

import (
	"net/http"
	"html/template"
	db2 "ChaoGo/db"
	"fmt"
	_"database/sql"
	"database/sql"
	"github.com/go-sql-driver/mysql"
	"log"
	"strconv"
	"strings"
)


var store =db2.Store
var db  = db2.DB

type Topic struct {
	Id int
	Name string
	Desc sql.NullString
	Date string
	UserId int64
}

type TopicParams struct {
	TopicSlice []Topic
	Email string
}

func GetTopics(topicId string) ([]Topic,  string  ){
	res, er := db.Query("select * from topic order by datecreated desc")

	tid, _ := strconv.Atoi(topicId)

	checkErr(er)
	topic := &Topic{}
	var title string = "not found"
	TopicSlice := []Topic{}
	time := mysql.NullTime{}
	for res.Next()  {

		res.Scan(&topic.Id, &topic.Name, &topic.Desc, &time, &topic.UserId)
		if tid == topic.Id {
			title = topic.Name
		}
		topic.Date = time.Time.Format("15h04 Ngày 02 tháng 01 năm 2006")
		TopicSlice = append(TopicSlice, *topic)
	}
	return TopicSlice, title
}

func TopicController(w http.ResponseWriter, r *http.Request) {

	if r.Method == "GET" {
		session, _ :=  store.Get(r, "user-session")
		var email = "Login"

		if session.Values["email"] != nil {
			email = session.Values["email"].(string)
		}

		topicParam := &TopicParams{}
		topicParam.TopicSlice, _ = GetTopics("")
		topicParam.Email = email
		var t, err = template.ParseFiles("topic.html")
		checkErr(err)
		t.Execute(w, topicParam)
	} else {
		err := r.ParseForm()
		checkErr(err)
		topicName := strings.TrimSpace(r.FormValue("tname"))
		topicDesc := strings.TrimSpace(r.FormValue("tdesc"))
		if len(topicName) > 0 && len (topicDesc) > 0{
			tx, err := db.Begin()
			checkErr(err)
			rs, err := tx.Exec("INSERT INTO  topic ( `name`, `desc` ) VALUES ( ?, ?)", topicName, topicDesc)
			checkErr(err)
			liID, err := rs.LastInsertId()
			checkErr(err)
			fmt.Println("lastinsert ID:", liID)
			checkErr(err)
			tx.Commit()
			http.Redirect(w,r,"/topic",http.StatusFound)
		} else {
			http.Redirect(w,r,"/topic",http.StatusFound)
		}
	}

}

func DeleteTopic(w http.ResponseWriter, r *http.Request){
	key, ok := r.URL.Query()["topicid"]

	if !ok || len(key) < 1 {
		log.Println("Url Param 'key' is missing")
		return
	}

	tx, err := db.Begin()
	checkErr(err)
	_, er := tx.Exec("delete from knowledge where topicid=?",key[0])
	_, er = tx.Exec("delete from topic where id=?",key[0])
	checkErr(er)

	tx.Commit()

	http.Redirect(w,r,"/topic",http.StatusFound)
}

func EditTopic(w http.ResponseWriter, r *http.Request){
	err := r.ParseForm()
	checkErr(err)
	topicId := strings.TrimSpace(r.FormValue("tid"))
	topicName := strings.TrimSpace(r.FormValue("tname"))
	topicDesc := strings.TrimSpace(r.FormValue("tdesc"))
	if len(topicId) > 0 && len(topicName) > 0 && len (topicDesc) > 0{
		tx, err := db.Begin()
		checkErr(err)
		i, err := strconv.Atoi(topicId)
		_, err = tx.Exec("update topic set `name` = ? , `desc` = ? where id = ?", topicName, topicDesc, i)
		checkErr(err)
		tx.Commit()
		http.Redirect(w,r,"/topic",http.StatusFound)
	} else {
		http.Redirect(w,r,"/topic",http.StatusFound)
	}
}

func checkErr(e error) {
	if e != nil {
		panic(e)
		fmt.Println(e)
	}
}
