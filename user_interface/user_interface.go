package user_interface

import (
	"bufio"
	"crypto/rand"
	"database/sql"
	"encoding/hex"
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/yassudaAug/bd1/database"
)

func GenerateRandomID(length int) (string, error) {
	bytes := make([]byte, length)
	if _, err := rand.Read(bytes); err != nil {
		return "", err
	}
	return hex.EncodeToString(bytes), nil
}

func userInterface(db *sql.DB) {
	reader := bufio.NewReader(os.Stdin)
	for {
		fmt.Println("Choose an operation: create, read, update, delete, or exit")
		fmt.Print("Enter operation: ")
		operation, _ := reader.ReadString('\n')
		operation = strings.TrimSpace(operation)

		switch operation {
		case "create":
			idHotel, err := GenerateRandomID(8)
			if err != nil {
				log.Fatal("Error generating random ID:", err)
			}

			fmt.Print("Enter Hotel Name: ")
			name, _ := reader.ReadString('\n')
			name = strings.TrimSpace(name)

			fmt.Print("Escreva o Registro Imobiliario: ")
			rgi, _ := reader.ReadString('\n')
			rgi = validateAndSanitizeRGI(rgi)

			fmt.Print("Escreva a cidade do Hotel: ")
			city, _ := reader.ReadString('\n')
			city = validateAndSanitizeCity(city)

			fmt.Print("Escreva o numero de estrelas do hotel: ")
			star, _ := reader.ReadString('\n')
			star = validateAndSanitizeStar(star)

			fmt.Print("Escreva o setor do hotel:")
			sector, _ := reader.ReadString('\n')
			sector = validateAndSanitizeSector(sector)

			fmt.Print("Escreva o tamanho do hotel:")
			size, _ := reader.ReadString('\n')
			sizeInt := validateAndSanitizeSize(size)

			fmt.Print("Escreva o CEP do hotel:")
			cep, _ := reader.ReadString('\n')
			cep = validateAndSanitizeCep(cep)

			fmt.Print("Escreva as Politicas do hotel:")
			rules, _ := reader.ReadString('\n')
			rules = validateAndSanitizeCep(rules)

			fmt.Print("O hotel tem um lobby? (s/n): ")
			lobby, _ := reader.ReadString('\n')
			lobbyInt := validateAndSanitizeLobby(lobby)

			eventsId, err := GenerateRandomID(20)
			if err != nil {
				log.Fatal("Error generating random ID:", err)
			}

			hotel := database.Hotel{
				IDHotel:             idHotel,
				IDLog:               "100",
				RegistroImobiliario: rgi,
				NomeHotel:           name,
				Categoria:           star + "Star",
				Setores:             sector,
				Tamanho:             sizeInt,
				EndCidade:           city,
				EndCEP:              cep,
				Politica:            rules,
				IDLobby:             lobbyInt,
				IDEspacoDeEventos:   eventsId,
			}

			err = database.CreateHotel(db, hotel)
			if err != nil {
				log.Fatal("Error creating hotel record:", err)
			}

		case "read":
			fmt.Print("Enter Hotel ID (leave blank to read all hotels): ")
			idHotel, _ := reader.ReadString('\n')
			idHotel = strings.TrimSpace(idHotel)

			if idHotel != "" {
				hotel, err := database.ReadHotelByID(db, idHotel)
				if err != nil {
					log.Fatal("Error reading hotel record:", err)
				}
				if hotel != nil {
					fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)
				} else {
					fmt.Println("No hotel found with the given ID")
				}
			} else {
				hotels, err := database.ReadHotels(db)
				if err != nil {
					log.Fatal("Error reading hotels:", err)
				}
				for _, hotel := range hotels {
					fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)
				}
			}

		case "update":
			fmt.Print("Enter Hotel ID: ")
			idHotel, _ := reader.ReadString('\n')
			idHotel = strings.TrimSpace(idHotel)

			fmt.Print("Enter Hotel Name: ")
			name, _ := reader.ReadString('\n')
			name = strings.TrimSpace(name)

			fmt.Print("Enter Hotel City: ")
			city, _ := reader.ReadString('\n')
			city = strings.TrimSpace(city)

			hotel := database.Hotel{
				IDHotel:             idHotel,
				IDLog:               "1000",
				RegistroImobiliario: "123456789",
				NomeHotel:           name,
				Categoria:           "5 Star",
				Setores:             "Sector A",
				Tamanho:             524,
				EndCidade:           city,
				EndCEP:              "12345-678",
				Politica:            "No smoking",
				IDLobby:             10,
				IDEspacoDeEventos:   "20",
			}
			err = database.UpdateHotel(db, hotel)
			if err != nil {
				log.Fatal("Error updating hotel record:", err)
			}

		case "delete":
			fmt.Print("Enter Hotel ID: ")
			idHotel, _ := reader.ReadString('\n')
			idHotel = strings.TrimSpace(idHotel)

			err = database.DeleteHotel(db, idHotel)
			if err != nil {
				log.Fatal("Error deleting hotel record:", err)
			}

		case "exit":
			fmt.Println("Exiting...")
			return

		default:
			fmt.Println("Invalid operation. Please choose create, read, update, delete, or exit.")
		}
	}
}
