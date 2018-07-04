package db

import ("database/sql"
 _ "github.com/go-sql-driver/mysql")

var DB, errglobal = sql.Open("mysql", "root:@tcp(localhost:3306)/webapp")