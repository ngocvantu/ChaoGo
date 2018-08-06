package db

import ("database/sql"
 _ "github.com/go-sql-driver/mysql"
 "github.com/gorilla/sessions"
 "github.com/gorilla/securecookie"
)

var DB, errglobal = sql.Open("mysql", "root:@tcp(45.32.118.97:3306)/webapp")
var Store = sessions.NewCookieStore(securecookie.GenerateRandomKey(64))