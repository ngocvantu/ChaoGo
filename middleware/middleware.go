package middleware

import (
	"net/http"
	"ChaoGo/db"
	"strings"
)

var store = db.Store

func CheckLogin(f http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {

		session, _ :=  store.Get(r, "user-session")

		if strings.HasPrefix(r.RequestURI, "/login") {
			if session.Values["email"] != nil {
				http.Redirect(w,r,"/topic",http.StatusFound)
				return
			}
		}  else {
			if session.Values["email"] == nil {
				http.Redirect(w,r,"/login",http.StatusFound)
				return
			}
		}

		f(w, r)
	}
}
