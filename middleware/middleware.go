package middleware

import (
	"net/http"
	"ChaoGo/db"
	"strings"
)

var store = db.Store

func CheckLogin(f http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter	, r *http.Request) {

		session, _ :=  store.Get(r, "user-session")

		if strings.HasPrefix(r.RequestURI, "/login") {
			if session.Values["email"] != nil {
				email := session.Values["email"]

				// delete to re-create session
				session.Options.MaxAge = -1
				session.Save(r, w)

				session, _ :=  store.Get(r, "user-session")
				session.Values["email"] = email
				session.Options.HttpOnly = true
				session.Options.MaxAge = 30000
				session.Save(r, w)

				http.Redirect(w,r,"/topic",http.StatusFound)
				return
			}
		}  else {
			if session.Values["email"] == nil {
				http.Redirect(w,r,"/login",http.StatusFound)
				return
			} else {
				email := session.Values["email"]

				// delete to re-create session
				session.Options.MaxAge = -1
				session.Save(r, w)

				session, _ :=  store.Get(r, "user-session")
				session.Values["email"] = email
				session.Options.HttpOnly = true
				session.Options.MaxAge = 30000
				session.Save(r, w)
			}
		}

		f(w, r)
	}
}
