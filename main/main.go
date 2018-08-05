package main

import (
	"net/http"
	"html/template"
	"ChaoGo/topic"
	_ "github.com/go-sql-driver/mysql"
	"ChaoGo/knowledge"
	"ChaoGo/db"
	"ChaoGo/user"
	"ChaoGo/middleware"
	"github.com/gorilla/context"
	"fmt"
)

var store = db.Store

type CommonParams struct {
	Topic []topic.Topic
	Title string
}


func IndexController(w http.ResponseWriter, r *http.Request){
	session, _ := store.Get(r, "session-name")

	var t, err = template.ParseFiles("index.html")
	commonParam := &CommonParams{Title:"index"}
	commonParam.Topic,_ = topic.GetTopics("")
	if title, ok := session.Values["foo"].(string); ok {
		commonParam.Title = title
	}
	checkErr(err)
	t.Execute(w,commonParam)
}

func main() {
	http.HandleFunc("/", IndexController)

	http.HandleFunc("/login", middleware.CheckLogin(user.LoginController))
	http.HandleFunc("/logout", middleware.CheckLogin(user.LogoutController))

	http.HandleFunc("/topic", middleware.CheckLogin(topic.TopicController))
	http.HandleFunc("/delete", middleware.CheckLogin(topic.DeleteTopic))
	http.HandleFunc("/edittopic", middleware.CheckLogin(topic.EditTopic))

	http.HandleFunc("/knowledge", middleware.CheckLogin(knowledge.KnowledgeController))
	http.HandleFunc("/editknowledge", middleware.CheckLogin(knowledge.EditKnowledge))
	http.HandleFunc("/deleteknowledge", middleware.CheckLogin(knowledge.Deleteknowledge))

	http.Handle("/public/", http.StripPrefix("/public/", http.FileServer(http.Dir("public"))))

	//e := http.ListenAndServe(":80", context.ClearHandler(http.DefaultServeMux))

	e := http.ListenAndServeTLS(":80", "server.crt", "server.key",  context.ClearHandler(http.DefaultServeMux))
	if e != nil {
		fmt.Println(e)
	}
}
func checkErr(e error) {
	if e != nil {
		panic(e)
	}
}
