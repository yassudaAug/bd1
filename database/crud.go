package database

import (
	"database/sql"
	"fmt"
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
	fmt.Println("a!")
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
