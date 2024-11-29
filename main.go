package main

import {
	"database/sql"
	"fmt"
	"log"
	"github.com/go-sql-driver/mysql"
}

func main() {

	conn := FillConnection("root", "", "localhost", "3306", "hotelaria")

	// dsn := "root:root@tcp(127.0.0.1:3306)/bruh"
	
	db, err := ConnectToDb(conn)
	if err != nil {
		fmt.Println("Connection error")
	}

}
