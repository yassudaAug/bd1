package database

import (
	"database/sql"
	"fmt"
	"log"
)

type Hotel struct {
	IDHotel             string
	IDLog               string
	RegistroImobiliario string
	NomeHotel           string
	Categoria           string
	Setores             string
	Tamanho             int
	EndCidade           string
	EndCEP              string
	Politica            string
	IDLobby             int
	IDEspacoDeEventos   string
}

func CreateHotel(db *sql.DB, hotel Hotel) error {
	query := `INSERT INTO hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) 
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
	_, err := db.Exec(query, hotel.IDHotel, hotel.IDLog, hotel.RegistroImobiliario, hotel.NomeHotel, hotel.Categoria, hotel.Setores, hotel.Tamanho, hotel.EndCidade, hotel.EndCEP, hotel.Politica, hotel.IDLobby, hotel.IDEspacoDeEventos)
	if err != nil {
		fmt.Println(err)
		return err
	}
	fmt.Println("Hotel record created successfully!")
	return nil
}

func ReadHotelByID(db *sql.DB, idHotel string) (*Hotel, error) {
	query := "SELECT Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos FROM hotel WHERE Id_Hotel = ?"
	row := db.QueryRow(query, idHotel)

	var hotel Hotel
	err := row.Scan(&hotel.IDHotel, &hotel.IDLog, &hotel.RegistroImobiliario, &hotel.NomeHotel, &hotel.Categoria, &hotel.Setores, &hotel.Tamanho, &hotel.EndCidade, &hotel.EndCEP, &hotel.Politica, &hotel.IDLobby, &hotel.IDEspacoDeEventos)
	if err != nil {
		if err == sql.ErrNoRows {
			fmt.Println("No hotel found with the given ID")
			return nil, nil
		}
		fmt.Println(err)
		return nil, err
	}

	return &hotel, nil
}

func ReadAllHotels(db *sql.DB) ([]Hotel, error) {
	query := "SELECT Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos FROM hotel"
	rows, err := db.Query(query)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	defer rows.Close()

	var hotels []Hotel
	for rows.Next() {
		var hotel Hotel
		if err := rows.Scan(&hotel.IDHotel, &hotel.IDLog, &hotel.RegistroImobiliario, &hotel.NomeHotel, &hotel.Categoria, &hotel.Setores, &hotel.Tamanho, &hotel.EndCidade, &hotel.EndCEP, &hotel.Politica, &hotel.IDLobby, &hotel.IDEspacoDeEventos); err != nil {
			fmt.Println(err)
			return nil, err
		}
		hotels = append(hotels, hotel)
	}

	if err := rows.Err(); err != nil {
		fmt.Println(err)
		return nil, err
	}

	return hotels, nil
}

func UpdateHotel(db *sql.DB, hotel Hotel) error {
	query := `UPDATE hotel SET ID_Log = ?, Registro_Imobiliario = ?, Nome_Hotel = ?, Categoria = ?, Setores = ?, Tamanho = ?, End_Cidade = ?, End_CEP = ?, Politica = ?, ID_Lobby = ?, ID_espaco_de_eventos = ?
              WHERE Id_Hotel = ?`
	_, err := db.Exec(query, hotel.IDLog, hotel.RegistroImobiliario, hotel.NomeHotel, hotel.Categoria, hotel.Setores, hotel.Tamanho, hotel.EndCidade, hotel.EndCEP, hotel.Politica, hotel.IDLobby, hotel.IDEspacoDeEventos, hotel.IDHotel)
	if err != nil {
		log.Fatal(err)
		return err
	}
	fmt.Println("Hotel record updated successfully!")
	return nil
}

func DeleteHotel(db *sql.DB, idHotel string) error {
	query := "DELETE FROM hotel WHERE Id_Hotel = ?"
	_, err := db.Exec(query, idHotel)
	if err != nil {
		log.Fatal(err)
		return err
	}
	fmt.Println("Hotel record deleted successfully!")
	return nil
}
