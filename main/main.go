package main

import (
	"net/http"
	"html/template"
	"ChaoGo/topic"
	_ "github.com/go-sql-driver/mysql"
	"ChaoGo/knowledge"
)

type CommonParams struct {
	Topic []topic.Topic
}


func IndexController(w http.ResponseWriter, r *http.Request){
	var t, err = template.ParseFiles("index.html")
	commonParam := &CommonParams{}
	commonParam.Topic,_ = topic.GetTopics("")
	checkErr(err)
	t.Execute(w,commonParam)
}

func main() {
	http.HandleFunc("/", IndexController)

	http.HandleFunc("/topic", topic.TopicController)
	http.HandleFunc("/delete", topic.DeleteTopic)
	http.HandleFunc("/edittopic", topic.EditTopic)

	http.HandleFunc("/knowledge", knowledge.KnowledgeController)
	http.HandleFunc("/editknowledge", knowledge.EditKnowledge)
	http.HandleFunc("/deleteknowledge", knowledge.Deleteknowledge)

	http.Handle("/public/", http.StripPrefix("/public/", http.FileServer(http.Dir("public"))))
	http.ListenAndServe(":8081",nil)
}
func checkErr(e error) {
	if e != nil {
		panic(e)
	}
}
