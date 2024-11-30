package main

import (
	"log"

	_ "github.com/go-sql-driver/mysql"
	"github.com/yassudaAug/bd1/database"
	"github.com/yassudaAug/bd1/user_interface"
)

func main() {

	conn := database.FillConnection("root", "", "localhost", "3306", "hotelaria")
	db, err := database.ConnectToDb(conn)
	if err != nil {
		log.Fatal("Connection error:", err)
	}

	defer db.Close() // Ensure the database connection is closed when main function exits

	user_interface.UserInterface(db)

}
