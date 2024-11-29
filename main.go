package main

import (
	"fmt"

	_ "github.com/go-sql-driver/mysql"
	"github.com/yassudaAug/bd1/database"
)

func main() {
	conn := database.FillConnection("root", "", "localhost", "3306", "hotelaria")

	db, err := database.ConnectToDb(conn)
	if err != nil {
		fmt.Println("Connection error")
	}

}
