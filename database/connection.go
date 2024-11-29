package database

import (
	"database/sql"
	"fmt"
	"log"
)

type Database interface {
	Connect() (*sql.DB, error)             // Connect to the database and return a *sql.DB object
	Query(query string) (*sql.Rows, error) // Execute a query and return the result set
	Close() error                          // Close the database connection
}

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
	defer db.Close()

	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Successfully connected to the database!")

	// Your database query logic goes here
	// Example: Select query
	// rows, err := db.Query("SELECT id, name FROM users")
	// if err != nil {
	// 	log.Fatal(err)
	// }
	// defer rows.Close()

	// for rows.Next() {
	// 	var id int
	// 	var name string
	// 	if err := rows.Scan(&id, &name); err != nil {
	// 		log.Fatal(err)
	// 	}
	// 	fmt.Println(id, name)
	// }

	// if err := rows.Err(); err != nil {
	// 	log.Fatal(err)
	// }

	// fmt.Println("Connection succesful!")
	return db, nil
}
