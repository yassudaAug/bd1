package user_interface

import (
	"errors"
	"fmt"
	"regexp"
	"strings"
)

func validateAndSanitizeHotelName(name string) (string, error) {
	name = strings.TrimSpace(name)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex: % err", err)
		return "", err
	}

	if re.MatchString(name) {
		fmt.Println("no wayyyyy")
		return name, nil
	}

	err = errors.New("invalid hotel name: must be 1-20 characters long and contain only letters and spaces")
	fmt.Printf("'%s' não é um nome válido. Deve ter entre 1 e 20 caracteres e conter apenas letras e espaços.\n", name)

	return "", err
}

func validateAndSanitizeRGI(rgi string) (string, error) { // talvez tenha que parsear pra int antes de fazer o regex
	pattern := `^\d{11}$`
	rgi = strings.TrimSpace(rgi)

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(rgi) {
		return rgi, nil
	}

	err = errors.New("is NOT a valid 11-digit number")
	fmt.Printf("'%s' não é um número válido de 11 dígitos.\n", rgi)

	return "", err
}

func validateAndSanitizeStar(star string) (string, error) {
	star = strings.TrimSpace(star)
	pattern := `^[1-5]$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(star) {
		return star, nil
	}

	err = errors.New("is NOT a valid digit in the range 1 to 5")
	fmt.Printf("'%s' não é um dígito válido na faixa de 1 a 5\n", star)

	return "", err
}

func validateAndSanitizeSector(sector string) (string, error) {
	sector = strings.TrimSpace(sector)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(sector) {
		return sector, nil
	}

	err = errors.New("is NOT a valid sector")
	fmt.Printf("'%s' não é um setor válido. O setor deve conter apenas letras e espaços, e ter entre 1 e 50 caracteres.\n", sector)

	return "", err
}

func validateAndSanitizeCity(city string) (string, error) {
	city = strings.TrimSpace(city)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(city) {
		return city, nil
	}

	fmt.Printf("'%s' não é uma cidade válida. A cidade deve conter apenas letras e espaços, e ter entre 1 e 20 caracteres.\n", city)

	return "", err
}

func validateAndSanitizeSize(size string) (int, error) {
	size = strings.TrimSpace(size)
	pattern := `^(?:[1-9][0-9]{0,3}|10000)$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return 0, err
	}

	if re.MatchString(size) {
		sizeInt, err := parseStringToInt(size)
		if err != nil {
			fmt.Println("Error converting string to int:", err)
			return 0, err
		}

		return sizeInt, nil
	}

	err = errors.New("is NOT a valid size")
	fmt.Printf("'%s' não é um tamanho válido. O tamanho deve ser um número entre 20 e 10000.\n", size)

	return 0, err
}

func validateAndSanitizeCep(cep string) (string, error) {
	cep = strings.TrimSpace(cep)
	pattern := `^\d{5}-\d{3}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(cep) {
		return cep, nil
	}

	err = errors.New("is NOT a valid CEP")
	fmt.Printf("'%s' não é um CEP válido. O CEP deve estar no formato 12345-678.\n", cep)

	return "", err
}

func validateAndSanitizeRules(rules string) (string, error) {
	rules = strings.TrimSpace(rules)
	pattern := `^[a-zA-Z ]{1,50}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(rules) {
		return rules, nil
	}

	err = errors.New("is NOT a valid rule")
	fmt.Printf("'%s' não é uma politica válida. A politica deve conter apenas letras e espaços, e ter entre 1 e 50 caracteres.\n", rules)

	return "", err
}

// func validateAndSanitizeLobby(lobby string) (int, error) {
// 	lobby = strings.TrimSpace(lobby)
// 	pattern := `^[sSnN]$`

// 	re, err := regexp.Compile(pattern)
// 	if err != nil {
// 		fmt.Println("Error compiling regex:", err)
// 		return 0, err
// 	}

// 	if re.MatchString(lobby) {
// 		switch strings.ToLower(lobby) {
// 		case "s":
// 			id, err := GenerateRandomID(11)
// 			if err != nil {
// 				fmt.Println("Error generating random ID, try again later:", err)

// 				return 0, err
// 			}
// 			idInt, err := parseStringToInt(id)
// 			if err != nil {
// 				fmt.Println("Error generating random ID, try again later:", err)

// 				return 0, err
// 			}

// 			return idInt, nil
// 		case "n":
// 			// Handle case for "n"
// 			fmt.Println("Lobby entry is 'n'")

// 			return 0, err
// 		}
// 	}

// 	err = errors.New("is NOT a valid lobby")

// 	fmt.Printf("'%s' não é um lobby válido. O lobby deve ser 's' ou 'n'.\n", lobby)

// 	return 0, err
// }

func validateAndSanitizeID(id string) (string, error) {
	id = strings.TrimSpace(id)
	pattern := `^\d{1,11}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return "", err
	}

	if re.MatchString(id) {
		return id, nil
	}

	err = errors.New("is NOT a valid ID")
	fmt.Printf("'%s' não é um ID válido. O ID deve conter apenas números e ter entre 1 e 20 caracteres.\n", id)

	return "", err
}

func validateAndSanitizeCPF(idHospede string) (string, error) {
	idHospede = strings.TrimSpace(idHospede)
	idHospede = regexp.MustCompile(`\D`).ReplaceAllString(idHospede, "")

	if len(idHospede) != 11 {
		err := errors.New("CPF deve conter exatamente 11 dígitos")
		fmt.Printf("'%s' não é um CPF válido. %s.\n", idHospede, err)
		return "", err
	}

	pattern := `^\d{11}$`
	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Erro ao compilar regex:", err)
		return "", err
	}

	if re.MatchString(idHospede) {
		return idHospede, nil
	}

	err = errors.New("CPF deve conter apenas números")
	fmt.Printf("'%s' não é um CPF válido. %s.\n", idHospede, err)
	return "", err
}

func validateAndSanitizeName(name string) (string, error) {
	name = strings.TrimSpace(name)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Erro ao compilar regex:", err)
		return "", err
	}

	if re.MatchString(name) {
		return name, nil
	}

	err = errors.New("nome deve conter apenas letras e espaços e ter entre 1 e 20 caracteres")
	fmt.Printf("'%s' não é um nome válido. %s.\n", name, err)
	return "", err
}

func validateAndSanitizePlacaCarro(placaCarro string) (string, error) {
	placaCarro = strings.TrimSpace(placaCarro)
	pattern := `^[A-Z]{3}-\d{4}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Erro ao compilar regex:", err)
		return "", err
	}

	if re.MatchString(placaCarro) {
		return placaCarro, nil
	}

	err = errors.New("placa do carro deve estar no formato AAA-1234")
	fmt.Printf("'%s' não é uma placa de carro válida. %s.\n", placaCarro, err)
	return "", err
}

func validateAndSanitizePrice(price string) (string, error) {
	price = strings.TrimSpace(price)
	pattern := `^(?:[1-9][0-9]{0,3}|10000)$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Erro ao compilar regex:", err)
		return "", err
	}

	if re.MatchString(price) {
		// priceInt, err := parseStringToInt(price)
		// if err != nil {
		// 	fmt.Println("Erro ao converter string para int:", err)
		// 	return 0, err
		// }

		return price, nil
	}

	err = errors.New("preço deve ser um número entre 20 e 10000")
	fmt.Printf("'%s' não é um preço válido. %s.\n", price, err)
	return "", err
}
