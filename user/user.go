package user

import (
	"ChaoGo/db"
	"net/http"
	"html/template"
	"strings"
	"net/smtp"
	"fmt"
	"bytes"
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

	msg2 := `<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="viewport" content="width=device-width"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Subscribe To My Blog - M.Labouardy</title>
    <style type="text/css">
      body{
        margin: 0 auto;
        padding: 0;
        min-width: 100%;
        font-family: sans-serif;
      }
      table{
        margin: 50px 0 50px 0;
      }
      .header{
        height: 40px;
        text-align: center;
        text-transform: uppercase;
        font-size: 24px;
        font-weight: bold;
      }
      .content{
        height: 100px;
        font-size: 18px;
        line-height: 30px;
      }
      .subscribe{
        height: 70px;
        text-align: center;
      }
      .button{
        text-align: center;
        font-size: 18px;
        font-family: sans-serif;
        font-weight: bold;
        padding: 0 30px 0 30px;
      }
      .button a{
        color: #FFFFFF;
        text-decoration: none;
      }
      .buttonwrapper{
        margin: 0 auto;
      }
      .footer{
        text-transform: uppercase;
        text-align: center;
        height: 40px;
        font-size: 14px;
        font-style: italic;
      }
      .footer a{
        color: #000000;
        text-decoration: none;
        font-style: normal;
      }
    </style>
  </head>
  <body bgcolor="#009587">
    <table bgcolor="#FFFFFF" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr class="header">
        <td style="padding: 40px;">
          It's worth it !
        </td>
      </tr>
      <tr class="content">
        <td style="padding:10px;">
          <p>
            Hi <b>tunguyen</b>, <br/>
            I'm <b>Mohamed</b>. I write about <b>DevOps</b>, <b>ChatOps</b>, <b>Android</b> and much more. If you don't find me super annoying, subscribe to my mailing list in order to make sure you don't miss my newest blog posts.
          </p>
        </td>
      </tr>
      <tr class="subscribe">
        <td style="padding: 20px 0 0 0;">
          <table bgcolor="#009587" border="0" cellspacing="0" cellpadding="0" class="buttonwrapper">
            <tr>
              <td class="button" height="45">
                <a href="http://labouardy.com" target="_blank">SUBSCRIBE NOW</a>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr class="footer">
        <td style="padding: 40px;">
          Designed by <a href="http://labouardy.com" target="_blank">Mohamed Labouardy</a>
        </td>
      </tr>
    </table>
  </body>
</html>`

	t, _ :=template.New("t1").Parse(msg2)
	buff := new(bytes.Buffer)
	_ = t.Execute(buff, nil)

	msg := buff.String()
	MIME := "MIME-version: 1.0;\nContent-Type: text/html; charset=\"UTF-8\";\n\n"
	body := "From: my team" + "To: " + "customer" + "\r\nSubject: " + "xin chao" + "\r\n" + MIME + "\r\n" + msg

	err := smtp.SendMail("smtp.gmail.com:587", smtp.PlainAuth("", from, pass, "smtp.gmail.com"),from, []string{to}, []byte(body))
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

