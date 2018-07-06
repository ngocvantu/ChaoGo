package user

import (
	"ChaoGo/db"
	"net/http"
	"html/template"
	"strings"
	"net/smtp"
	"fmt"
)

var store = db.Store

func LoginController(w http.ResponseWriter, r *http.Request) {
	if r.Method == "GET" {
		RenderView("login.html", w)
	} else {
		email, pass := GetFormValues(r, "email", "pass")

		if len(email) > 5 && len(pass) > 5 && email =="tunguyen4078@gmail.com" && pass == "07051992" {
			session, _ :=  store.Get(r, "user-session")
			session.Values["email"] = email
			session.Options.HttpOnly = true
			session.Options.MaxAge = 300
			session.Save(r, w)
			sendMail(email)
			http.Redirect(w,r,"/topic",http.StatusFound)
		} else {
			http.Redirect(w,r,"/login",http.StatusFound)
		}
	}
}
func sendMail(email string) {
	from := "tunguyen.sinhvien@gmail.com"
	pass := "Thongtinaz@12"
	to := email

	msg := "From: hoconline&nbsp;team asdfa\n" +
		"To: " + email + "\n" +
		"Subject: This is a subject" + "\n\n" +
		"Chao ban, check your"

	err := smtp.SendMail("smtp.gmail.com:587", smtp.PlainAuth("", from, pass, "smtp.gmail.com"),from, []string{to}, []byte(msg))
	if err != nil {
		panic(err)
		return
	}

	fmt.Println("sent email to", email, "from", from)
}

func LogoutController(w http.ResponseWriter, r *http.Request){
	session, _ :=  store.Get(r, "user-session")

	if session.Values["email"] != nil {
		session.Options.MaxAge = -1
		session.Save(r, w)
	}
	http.Redirect(w,r,"/login",http.StatusFound)
}

func GetFormValues(r *http.Request, s string, s2 string) (string, string) {
	r.ParseForm()
	return strings.TrimSpace(r.FormValue(s)), strings.TrimSpace(r.FormValue(s2))
}

func RenderView(viewName string, w http.ResponseWriter) {
	var t, _ = template.ParseFiles(viewName)

	t.Execute(w,nil)
}

