package database

import (
	"database/sql"
	"fmt"
	"log"
)

type Connection struct {
	username string // MySQL username (default is root in XAMPP)
	password string // MySQL password (default is empty in XAMPP)
	hostname string // MySQL hostname (localhost for local XAMPP)
	port     string // MySQL port (default is 3306)
	dbname   string // Database name (replace with your database)
}

func FillConnection(username, password, hostname, port, dbname string) *Connection {
	conn := &Connection{
		username: username,
		password: password,
		hostname: hostname,
		port:     port,
		dbname:   dbname,
	}

	return conn
}

func ConnectToDb(conn *Connection) (*sql.DB, error) {
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", conn.username, conn.password, conn.hostname, conn.port, conn.dbname)

	db, err := sql.Open("mysql", dsn)
	if err != nil {
		log.Fatal(err)
		return nil, err
	}

	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Successfully connected to the database!")

	return db, nil
}
