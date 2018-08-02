package main

import (
	"net/http"
	"html/template"
	"ChaoGo/topic"
	_ "github.com/go-sql-driver/mysql"
	"ChaoGo/knowledge"
	"github.com/gorilla/context"
	"ChaoGo/db"
	"ChaoGo/user"
	"ChaoGo/middleware"
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

func redirectToHttps(w http.ResponseWriter, r *http.Request) {
	// Redirect the incoming HTTP request. Note that "127.0.0.1:8081" will only work if you are accessing the server from your local machine.
	http.Redirect(w, r, "https://tunguyen.top"+r.RequestURI, http.StatusMovedPermanently)
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

	go http.ListenAndServeTLS(":80", "server.crt", "server.key",  context.ClearHandler(http.DefaultServeMux))

	err := http.ListenAndServe(":80", http.HandlerFunc(redirectToHttps))
	fmt.Print(err)
}
func checkErr(e error) {
	if e != nil {
		panic(e)
	}
}
