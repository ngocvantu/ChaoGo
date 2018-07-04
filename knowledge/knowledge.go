package knowledge

import ("net/http"
	db2 "ChaoGo/db"
	"html/template"
	"fmt"
	"ChaoGo/topic"
	"database/sql"
	"github.com/go-sql-driver/mysql"
	"strconv"
	"strings"
	"log"
)

var db  = db2.DB

type Knowledge struct {
	Id int
	Name string
	Desc sql.NullString
	Date string
	UserId int
	TopicId int
}

type KnowledgeParams struct {
	TopicSlice []topic.Topic
	KnowledgeSlice []Knowledge
	Title string
	TopicId string
}

func GetKnowledge(topicId string)  ([]Knowledge) {
	res, er := db.Query("select * from knowledge where topicid =? order by datecreated desc", topicId)
	checkErr(er)
	knowledge := &Knowledge{}
	KnowledgeSlice := []Knowledge{}
	time := mysql.NullTime{}
	for res.Next()  {

		res.Scan(&knowledge.Id, &knowledge.Name, &knowledge.Desc, &time, &knowledge.UserId, &knowledge.TopicId)
		knowledge.Date = time.Time.Format("15h04 Ngày 02 tháng 01 năm 2006")

		KnowledgeSlice = append(KnowledgeSlice, *knowledge)
	}
	return KnowledgeSlice
}

func EditKnowledge(w http.ResponseWriter, r *http.Request){
	topicIdStr := r.URL.Query()["topic"][0]
	err := r.ParseForm()
	checkErr(err)
	knowledgeId := strings.TrimSpace(r.FormValue("kid"))
	knowledgename := strings.TrimSpace(r.FormValue("kname"))
	knowledgeDesc := strings.TrimSpace(r.FormValue("kdesc"))

	if len(knowledgeId) > 0 && len(knowledgename) > 0 && len (knowledgeDesc) > 0{
		tx, err := db.Begin()
		checkErr(err)
		i, err := strconv.Atoi(knowledgeId)
		_, err = tx.Exec("update knowledge set `name` = ? , `desc` = ? where id = ?", knowledgename, knowledgeDesc, i)
		checkErr(err)
		tx.Commit()
		http.Redirect(w,r,"/knowledge?topic=" + topicIdStr,http.StatusFound)
	} else {
		http.Redirect(w,r,"/knowledge?topic=" + topicIdStr,http.StatusFound)
	}
}

func Deleteknowledge(w http.ResponseWriter, r *http.Request){
	topicIdStr, ok := r.URL.Query()["topic"]
	knowledgeIdStr, ok := r.URL.Query()["knowledgeid"]

	if !ok || len(topicIdStr) < 1 ||len(knowledgeIdStr) < 1{
		log.Println("Url Param 'key' is missing")
		return
	}

	tx, err := db.Begin()
	checkErr(err)

	_, er := tx.Exec("delete from knowledge where id=? and topicid = ?",knowledgeIdStr[0],topicIdStr[0])
	checkErr(er)

	tx.Commit()

	http.Redirect(w,r,"/knowledge?topic=" + topicIdStr[0],http.StatusFound)
}

func KnowledgeController(w http.ResponseWriter, r *http.Request) {
	if r.Method == "GET" {
		topicId := r.URL.Query()["topic"][0]

		var t, err = template.ParseFiles("knowledge.html")
		checkErr(err)

		knowledgeParams := &KnowledgeParams{}
		knowledgeParams.TopicSlice, knowledgeParams.Title = topic.GetTopics(topicId)
		knowledgeParams.KnowledgeSlice = GetKnowledge(topicId)
		knowledgeParams.TopicId = topicId

		t.Execute(w,knowledgeParams)
	} else {
		err := r.ParseForm()
		checkErr(err)
		topicIdStr := r.FormValue("tid")
		topicIdInt, _ := strconv.Atoi(topicIdStr)

		knowledgeName := strings.TrimSpace(r.FormValue("kname"))
		knowledgeDesc := strings.TrimSpace(r.FormValue("kdesc"))
		if len(knowledgeName) > 0 && len (knowledgeDesc) > 0{
			tx, err := db.Begin()
			checkErr(err)
			rs, err := tx.Exec("INSERT INTO  knowledge ( `name`, `desc` ,`topicid`) VALUES ( ?, ?, ?)", knowledgeName, knowledgeDesc, topicIdInt)
			checkErr(err)
			liID, err := rs.LastInsertId()
			checkErr(err)
			fmt.Println("lastinsert ID:", liID)
			checkErr(err)
			tx.Commit()
			http.Redirect(w,r,"/knowledge?topic=" + topicIdStr,http.StatusFound)
		} else {
			http.Redirect(w,r,"/knowledge?topic=" + topicIdStr,http.StatusFound)
		}
	}
}

func checkErr(e error) {
	if e != nil {
		panic(e)
		fmt.Println(e)
	}
}