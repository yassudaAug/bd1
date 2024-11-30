package database

import (
	"database/sql"
	"fmt"
)

type Hospede struct {
	IDHospede   string
	IDTransacao int
	Nome        string
	PlacaCarro  string
}

type Transacao struct {
	IDTransacao    int
	ValorTransacao float64
	DataTransacao  string
}

type FiscalCoupom struct {
	IDTransacao int
	IDHospede   string
}

func CreateHospede(db *sql.DB, hospede Hospede) error {
	query := `INSERT INTO hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) 
		  VALUES (?, ?, ?, ?)`
	_, err := db.Exec(query, hospede.IDHospede, hospede.IDTransacao, hospede.Nome, hospede.PlacaCarro)
	if err != nil {
		fmt.Println(err)
		return err
	}
	fmt.Println("Hospede record created successfully!")
	return nil
}

func ReadHospedeByID(db *sql.DB, idHospede string) (*Hospede, error) {
	query := "SELECT ID_Hospede, ID_Transacao, Nome, Placa_Carro FROM hospede WHERE ID_Hospede = ?"
	row := db.QueryRow(query, idHospede)

	var hospede Hospede
	err := row.Scan(&hospede.IDHospede, &hospede.IDTransacao, &hospede.Nome, &hospede.PlacaCarro)
	if err != nil {
		if err == sql.ErrNoRows {
			fmt.Println("No hospede found with the given ID")
			return nil, nil
		}
		fmt.Println(err)
		return nil, err
	}

	return &hospede, nil
}

func ListAllHospedes(db *sql.DB) ([]Hospede, error) {
	query := "SELECT ID_Hospede, ID_Transacao, Nome, Placa_Carro FROM hospede"
	rows, err := db.Query(query)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	defer rows.Close()

	var hospedes []Hospede
	for rows.Next() {
		var hospede Hospede
		err := rows.Scan(&hospede.IDHospede, &hospede.IDTransacao, &hospede.Nome, &hospede.PlacaCarro)
		if err != nil {
			fmt.Println(err)
			return nil, err
		}
		hospedes = append(hospedes, hospede)
	}

	return hospedes, nil
}

func UpdateHospede(db *sql.DB, hospede Hospede) error {
	query := `UPDATE hospede SET ID_Transacao = ?, Nome = ?, Placa_Carro = ? WHERE ID_Hospede = ?`
	_, err := db.Exec(query, hospede.IDTransacao, hospede.Nome, hospede.PlacaCarro, hospede.IDHospede)
	if err != nil {
		fmt.Println(err)
		return err
	}
	fmt.Println("Hospede record updated successfully!")
	return nil
}

func DeleteHospede(db *sql.DB, idHospede string) error {
	query := "DELETE FROM hospede WHERE ID_Hospede = ?"
	_, err := db.Exec(query, idHospede)
	if err != nil {
		fmt.Println(err)
		return err
	}
	fmt.Println("Hospede record deleted successfully!")
	return nil
}

func CreateTransacao(db *sql.DB, transacao Transacao) error {
	query := `INSERT INTO transacoes (ID_Transacao, Valor_Transacao, Data_Transacao)
			VALUES (?, ?, ?)`
	_, err := db.Exec(query, transacao.IDTransacao, transacao.ValorTransacao, transacao.DataTransacao)
	if err != nil {
		fmt.Println(err)
		return err

	}
	fmt.Println("Transacao record created successfully!")
	return nil
}

func CreateFiscalCupom(db *sql.DB, fiscalCupom FiscalCoupom) error {
	query := `INSERT INTO nota_fiscal (ID_Transacao, ID_Hospede)
			VALUES (?, ?)`
	_, err := db.Exec(query, fiscalCupom.IDTransacao, fiscalCupom.IDHospede)
	if err != nil {
		fmt.Println(err)
		return err
	}
	fmt.Println("FiscalCupom record created successfully!")
	return nil
}
