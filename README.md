# Hotel Management System

This project is a simple Hotel Management System implemented in Go. It provides an interactive command-line interface for performing CRUD (Create, Read, Update, Delete) operations on hotel records in a MySQL database.

## Features

- Create a new hotel record
- Read hotel records (single or all)
- Update an existing hotel record
- Delete a hotel record
- Validate and sanitize user inputs

## Requirements

- Go 1.20.1
- MySQL database

## Setup

1. Clone the repository:

    ```sh
    git clone https://github.com/yourusername/hotel-management-system.git
    cd hotel-management-system
    ```

2. Install the required Go packages:

    ```sh
    go get -u github.com/go-sql-driver/mysql
    ```

3. Set up the MySQL database:

    ```sql
    CREATE DATABASE hotelaria;
    USE hotelaria;

    CREATE TABLE hotel (
        Id_Hotel VARCHAR(20) PRIMARY KEY,
        ID_Log VARCHAR(20),
        Registro_Imobiliario CHAR(11) NOT NULL,
        Nome_Hotel CHAR(20) NOT NULL,
        Categoria CHAR(20) NOT NULL,
        Setores CHAR(20) NOT NULL,
        Tamanho BIGINT(20) NOT NULL,
        End_Cidade CHAR(20) NOT NULL,
        End_CEP CHAR(1) NOT NULL,
        Politica CHAR(50) NOT NULL,
        ID_Lobby INT NOT NULL,
        ID_espaco_de_eventos INT,
        FOREIGN KEY (ID_Lobby) REFERENCES lobby(ID_Lobby)
    );

    CREATE TABLE lobby (
        ID_Lobby INT PRIMARY KEY,
        Name VARCHAR(50)
    );
    ```

4. Update the database connection details in `main.go`:

    ```go
    conn := database.FillConnection("root", "", "localhost", "3306", "hotelaria")
    ```

## Usage

Run the program:

```sh
go run [main.go](http://_vscodecontentref_/1)