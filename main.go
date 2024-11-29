package main

import (
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
	"github.com/yassudaAug/bd1/database"
)

func main() {

	// hotel := database.Hotel{
	// 	IDHotel:             "1",
	// 	IDLog:               "100",
	// 	RegistroImobiliario: "123456789",
	// 	NomeHotel:           "Hotel Example",
	// 	Categoria:           "5 Star",
	// 	Setores:             "Sector A",
	// 	Tamanho:             524,
	// 	EndCidade:           "Example City",
	// 	EndCEP:              "12345-678",
	// 	Politica:            "No smoking",
	// 	IDLobby:             10,
	// 	IDEspacoDeEventos:   "20",
	// }

	hotelUpdate := database.Hotel{
		IDHotel:             "1",
		IDLog:               "1000",
		RegistroImobiliario: "123456789",
		NomeHotel:           "Hotel Example",
		Categoria:           "5 Star",
		Setores:             "Sector A",
		Tamanho:             524,
		EndCidade:           "sao paulo",
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

	// err = database.CreateHotel(db, hotel)

	hotels, err := database.ReadAllHotels(db)

	for _, hotel := range hotels {
		fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)
	}
	if err != nil {
		log.Fatal("Error creating hotel record:", err)
	}

	err = database.UpdateHotel(db, hotelUpdate)
	if err != nil {
		log.Fatal("Error creating hotel record:", err)
	}

	hotel, err := database.ReadHotelByID(db, "1")
	if err != nil {
		log.Fatal("Error creating hotel record:", err)
	}
	fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)

}
