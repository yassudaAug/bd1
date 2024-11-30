package user_interface

import (
	"bufio"
	"database/sql"
	"encoding/hex"
	"fmt"
	"log"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/yassudaAug/bd1/database"
)

func GenerateRandomID(length int) (string, error) {
	bytes := make([]byte, length)
	if _, err := rand.Read(bytes); err != nil {
		return "", err
	}
	return hex.EncodeToString(bytes), nil
}

func generateRandomIntID(min, max int) int {
	rand.Seed(time.Now().UnixNano())
	return rand.Intn(max-min+1) + min
}

func UserInterface(db *sql.DB) {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Println("Escolha uma opção: hotel, hospede, ou exit")
		fmt.Print("Enter option: ")
		option, _ := reader.ReadString('\n')
		option = strings.TrimSpace(option)

		switch option {
		case "hotel":
			for {
				fmt.Println("Escolha uma operacao: create, read, list, update, delete, ou exit")
				fmt.Print("Enter operation: ")
				operation, _ := reader.ReadString('\n')
				operation = strings.TrimSpace(operation)

				switch operation {
				case "create":
					idHotel, err := GenerateRandomID(8)
					if err != nil {
						log.Fatal("Error generating random ID:", err)
					}

					name := promptForValidHotelName(reader)

					rgi := promptForValidRGI(reader)

					city := promptForValidCity(reader)

					star := promptForValidStar(reader)

					sector := promptForValidSector(reader)

					size := promptForValidSize(reader)

					cep := promptForValidCep(reader)

					rules := promptForValidRules(reader)

					// lobby := promptForValidLobby(reader)

					eventsId, err := GenerateRandomID(20)
					if err != nil {
						log.Fatal("Error generating random ID:", err)
					}

					hotel := database.Hotel{
						IDHotel:             idHotel,
						RegistroImobiliario: rgi,
						NomeHotel:           name,
						Categoria:           star + "Star",
						Setores:             sector,
						Tamanho:             size,
						EndCidade:           city,
						EndCEP:              cep,
						Politica:            rules,
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
						fmt.Println("No hotel found with the given ID, Listing all hotels")
						hotels, err := database.ListAllHotels(db)
						if err != nil {
							log.Fatal("Error reading hotels:", err)
						}
						for _, hotel := range hotels {
							fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)
						}
					}

				case "list":
					fmt.Print("Listando todos os hoteis: ")

					hotels, err := database.ListAllHotels(db)
					if err != nil {
						log.Fatal("Error reading hotels:", err)
					}

					for _, hotel := range hotels {
						fmt.Printf("Hotel ID: %s, Name: %s, City: %s\n", hotel.IDHotel, hotel.NomeHotel, hotel.EndCidade)
					}

				case "update":

					idHotel := promptForValidHotelID(reader)

					hotel, err := database.ReadHotelByID(db, idHotel)
					if err != nil {
						log.Fatal("Erro ao ler ID do hotel:", err)
					}

					name := promptForValidHotelName(reader)

					rgi := promptForValidRGI(reader)

					city := promptForValidCity(reader)

					star := promptForValidStar(reader)

					sector := promptForValidSector(reader)

					size := promptForValidSize(reader)

					cep := promptForValidCep(reader)

					rules := promptForValidRules(reader)

					// lobby := promptForValidLobby(reader)

					newHotel := database.Hotel{
						IDHotel:             hotel.IDHotel,
						RegistroImobiliario: rgi,
						NomeHotel:           name,
						Categoria:           star + "Star",
						Setores:             sector,
						Tamanho:             size,
						EndCidade:           city,
						EndCEP:              cep,
						Politica:            rules,
						IDEspacoDeEventos:   hotel.IDEspacoDeEventos,
					}

					err = database.UpdateHotel(db, newHotel)
					if err != nil {
						log.Fatal("Error updating hotel record:", err)
					}

				case "delete":
					fmt.Print("Enter Hotel ID: ")
					idHotel, _ := reader.ReadString('\n')
					idHotel = strings.TrimSpace(idHotel)

					err := database.DeleteHotel(db, idHotel)
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

		case "hospede":
			for {
				fmt.Println("Escolha uma operacao: create, read, list, update, delete, ou exit")
				fmt.Print("Enter operation: ")
				operation, _ := reader.ReadString('\n')
				operation = strings.TrimSpace(operation)

				switch operation {
				case "create":
					cpf := promptForValidIDHospede(reader)
					// cpfInt, _ := parseStringToInt(cpf)

					idTransacao := generateRandomIntID(1, 255)

					fmt.Println("idTransacaostr: ", idTransacao)

					// idTransacao, err := parseStringToInt(idTransacaoStr)
					// fmt.Println("idTransacao: ", idTransacao)
					// if err != nil {
					// 	fmt.Println("Error parsing ID:", err)
					// }

					name := promptForValidName(reader)

					placaCarro := promptForValidPlacaCarro(reader)

					price := PromptForValidPrice(reader)
					priceFlt, err := strconv.ParseFloat(price, 32)
					if err != nil {
						log.Fatal("Error parsing price:", err)
					}

					transacao := database.Transacao{
						IDTransacao:    idTransacao,
						ValorTransacao: priceFlt,
						DataTransacao:  time.Now().Format("2006-01-02"),
					}

					err = database.CreateTransacao(db, transacao)
					if err != nil {
						log.Fatal("Error creating transaction record:", err)
					}

					fiscalCoupom := database.FiscalCoupom{
						IDTransacao: idTransacao,
						IDHospede:   cpf,
					}

					err = database.CreateFiscalCupom(db, fiscalCoupom)
					if err != nil {
						log.Fatal("Error creating fiscal coupom record:", err)
					}

					hospede := database.Hospede{
						IDHospede:   cpf,
						IDTransacao: idTransacao,
						Nome:        name,
						PlacaCarro:  placaCarro,
					}

					err = database.CreateHospede(db, hospede)
					if err != nil {
						log.Fatal("Error creating hospede record:", err)
					}

				case "read":
					fmt.Print("Enter Hospede ID (leave blank to read all hospedes): ")
					idHospede, _ := reader.ReadString('\n')
					idHospede = strings.TrimSpace(idHospede)

					if idHospede != "" {
						hospede, err := database.ReadHospedeByID(db, idHospede)
						if err != nil {
							log.Fatal("Error reading hospede record:", err)
						}
						if hospede != nil {
							fmt.Printf("Hospede ID: %s, Name: %s, Placa Carro: %s\n", hospede.IDHospede, hospede.Nome, hospede.PlacaCarro)
						} else {
							fmt.Println("No hospede found with the given ID")
						}
					} else {
						fmt.Println("No hospede found with the given ID, Listing all hospedes")
						hospedes, err := database.ListAllHospedes(db)
						if err != nil {
							log.Fatal("Error reading hospedes:", err)
						}
						for _, hospede := range hospedes {
							fmt.Printf("Hospede ID: %s, Name: %s, Placa Carro: %s\n", hospede.IDHospede, hospede.Nome, hospede.PlacaCarro)
						}
					}

				case "list":
					fmt.Print("Listando todos os hospedes: ")

					hospedes, err := database.ListAllHospedes(db)
					if err != nil {
						log.Fatal("Error reading hospedes:", err)
					}

					for _, hospede := range hospedes {
						fmt.Printf("Hospede ID: %s, Name: %s, Placa Carro: %s\n", hospede.IDHospede, hospede.Nome, hospede.PlacaCarro)
					}

				case "update":
					idHospede := promptForValidIDHospede(reader)

					hospede, err := database.ReadHospedeByID(db, idHospede)
					if err != nil {
						log.Fatal("Erro ao ler ID do hospede:", err)
					}

					name := promptForValidName(reader)

					placaCarro := promptForValidPlacaCarro(reader)

					newHospede := database.Hospede{
						IDHospede:   hospede.IDHospede,
						IDTransacao: hospede.IDTransacao,
						Nome:        name,
						PlacaCarro:  placaCarro,
					}

					err = database.UpdateHospede(db, newHospede)
					if err != nil {
						log.Fatal("Error updating hospede record:", err)
					}

				case "delete":
					fmt.Print("Enter Hospede ID: ")
					idHospede, _ := reader.ReadString('\n')
					idHospede = strings.TrimSpace(idHospede)

					err := database.DeleteHospede(db, idHospede)
					if err != nil {
						log.Fatal("Error deleting hospede record:", err)
					}

				case "exit":
					fmt.Println("Exiting...")
					return

				default:
					fmt.Println("Invalid operation. Please choose create, read, update, delete, or exit.")
				}
			}
		case "exit":
			fmt.Println("Exiting...")
			return

		default:
			fmt.Println("Invalid option. Please choose hotel, hospede, or exit.")
		}
	}
}

func promptForValidHotelName(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o nome do hotel: ")
		name, _ := reader.ReadString('\n')
		name = strings.TrimSpace(name)
		name, err := validateAndSanitizeHotelName(name)
		if err == nil {
			return name
		}
		fmt.Println("Invalid Hotel Name. Please try again.")
	}
}

func promptForValidRGI(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o Registro Imobiliario: ")
		rgi, _ := reader.ReadString('\n')
		rgi = strings.TrimSpace(rgi)
		rgi, err := validateAndSanitizeRGI(rgi)
		if err == nil {
			return rgi
		}
		fmt.Println("Invalid Registro Imobiliario. Please try again.")
	}
}

func promptForValidCity(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva a cidade do hotel: ")
		city, _ := reader.ReadString('\n')
		city = strings.TrimSpace(city)
		city, err := validateAndSanitizeCity(city)
		if err == nil {
			return city
		}
		fmt.Println("Invalid City. Please try again.")
	}
}

func promptForValidStar(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o numero de estrelas do hotel: ")
		star, _ := reader.ReadString('\n')
		star = strings.TrimSpace(star)
		star, err := validateAndSanitizeStar(star)
		if err == nil {
			return star
		}
		fmt.Println("Invalid Star. Please try again.")
	}
}

func promptForValidSector(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o setor do hotel: ")
		sector, _ := reader.ReadString('\n')
		sector = strings.TrimSpace(sector)
		sector, err := validateAndSanitizeSector(sector)
		if err == nil {
			return sector
		}
		fmt.Println("Invalid Sector. Please try again.")
	}
}

func promptForValidSize(reader *bufio.Reader) int {
	for {
		fmt.Print("Escreva o tamanho do hotel: ")
		size, _ := reader.ReadString('\n')
		size = strings.TrimSpace(size)
		sizeInt, err := validateAndSanitizeSize(size)
		if err == nil {
			return sizeInt
		}
		fmt.Println("Invalid Size. Please try again.")
	}
}

func promptForValidCep(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o CEP do hotel: ")
		cep, _ := reader.ReadString('\n')
		cep = strings.TrimSpace(cep)
		cep, err := validateAndSanitizeCep(cep)
		if err == nil {
			return cep
		}
		fmt.Println("Invalid CEP. Please try again.")
	}
}

func promptForValidRules(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva as Politicas do hotel: ")
		rules, _ := reader.ReadString('\n')
		rules = strings.TrimSpace(rules)
		rules, err := validateAndSanitizeRules(rules)
		if err == nil {
			return rules
		}
		fmt.Println("Invalid Rules. Please try again.")
	}
}

// func promptForValidLobby(reader *bufio.Reader) int {
// 	for {
// 		fmt.Print("O hotel tem um lobby? (s/n): ")
// 		lobby, _ := reader.ReadString('\n')
// 		lobby = strings.TrimSpace(lobby)
// 		lobbyInt, err := validateAndSanitizeLobby(lobby)
// 		if err == nil {
// 			return lobbyInt
// 		}
// 		fmt.Println("Invalid Lobby. Please try again.")
// 	}
// }

func promptForValidHotelID(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o Id do Hotel: ")
		idHotel, _ := reader.ReadString('\n')
		idHotel = strings.TrimSpace(idHotel)
		idHotel, err := validateAndSanitizeID(idHotel)
		if err == nil {
			return idHotel
		}
		fmt.Println("Invalid ID. Please try again.")
	}
}

func promptForValidIDHospede(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o Id do Hospede: ")
		idHospede, _ := reader.ReadString('\n')
		idHospede = strings.TrimSpace(idHospede)
		idHospede, err := validateAndSanitizeCPF(idHospede)
		if err == nil {
			return idHospede
		}
		fmt.Println("Invalid ID. Please try again.")
	}
}

func promptForValidName(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva o nome do Hospede: ")
		name, _ := reader.ReadString('\n')
		name = strings.TrimSpace(name)
		name, err := validateAndSanitizeName(name)
		if err == nil {
			return name
		}
		fmt.Println("Invalid Name. Please try again.")
	}
}

func promptForValidPlacaCarro(reader *bufio.Reader) string {
	for {
		fmt.Print("Escreva a placa do carro: ")
		placaCarro, _ := reader.ReadString('\n')
		placaCarro = strings.TrimSpace(placaCarro)
		placaCarro, err := validateAndSanitizePlacaCarro(placaCarro)
		if err == nil {
			return placaCarro
		}
		fmt.Println("Invalid Placa Carro. Please try again.")
	}
}

func PromptForValidPrice(reader *bufio.Reader) string {
	for {
		fmt.Print("Enter Price: ")
		price, _ := reader.ReadString('\n')
		price = strings.TrimSpace(price)
		priceFloat, err := validateAndSanitizePrice(price)
		if err == nil {
			return priceFloat
		}
		fmt.Println("Invalid Price. Please try again.")
	}
}
