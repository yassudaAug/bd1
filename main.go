package main

import (
	"log"

	_ "github.com/go-sql-driver/mysql"
	"github.com/yassudaAug/bd1/database"
)

func main() {

	hotel := database.Hotel{
		IDHotel:             "1",
		IDLog:               "100",
		RegistroImobiliario: "123456789",
		NomeHotel:           "Hotel Example",
		Categoria:           "5 Star",
		Setores:             "Sector A",
		Tamanho:             524,
		EndCidade:           "Example City",
		EndCEP:              "12345-678",
		Politica:            "No smoking",
		IDLobby:             10,
		IDEspacoDeEventos:   "20",
	}
	conn := database.FillConnection("root", "", "localhost", "3306", "hotelaria")
	db, err := database.ConnectToDb(conn)
	if err != nil {
		log.Fatal("Connection error:", err)
	}
	defer db.Close() // Ensure the database connection is closed when main function exits

	err = database.CreateHotel(db, hotel)
	if err != nil {
		log.Fatal("Error creating hotel record:", err)
	}

}
