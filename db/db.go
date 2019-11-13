package db

import ("database/sql"
 _ "github.com/go-sql-driver/mysql"
 "github.com/gorilla/sessions"
 "github.com/gorilla/securecookie"
)

var DB, errglobal = sql.Open("mysql", "root:root@tcp(35.247.168.217:3306)/webapp")
var Store = sessions.NewCookieStore(securecookie.GenerateRandomKey(64))
