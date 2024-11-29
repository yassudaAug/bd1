package user_interface

import (
	"fmt"
	"regexp"
	"strings"
)

func validateAndSanitizeRGI(rgi string) string { // talvez tenha que parsear pra int antes de fazer o regex
	pattern := `^\d{11}$`
	rgi = strings.TrimSpace(rgi)

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(rgi) {
		return rgi
	}

	fmt.Printf("'%s' is NOT a valid 11-digit number.\n", rgi)

	return ""
}

func validateAndSanitizeStar(star string) string {
	star = strings.TrimSpace(star)
	pattern := `^[1-5]$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(star) {
		return star
	}

	fmt.Printf("'%s' is NOT a valid digit in the range 1 to 5\n", star)

	return ""
}

func validateAndSanitizeSector(sector string) string {
	sector = strings.TrimSpace(sector)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(sector) {
		return sector
	}

	fmt.Printf("'%s' is NOT a valid sector\n", sector)

	return ""
}

func validateAndSanitizeCity(city string) string {
	city = strings.TrimSpace(city)
	pattern := `^[a-zA-Z ]{1,20}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(city) {
		return city
	}

	fmt.Printf("'%s' is NOT a valid city\n", city)

	return ""
}

func validateAndSanitizeSize(size string) int {
	size = strings.TrimSpace(size)
	pattern := `^(?:[1-9][0-9]{0,3}|10000)$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return 0
	}

	if re.MatchString(size) {
		sizeInt, err := parseStringToInt(size)
		if err != nil {
			fmt.Println("Error converting string to int:", err)
			return 0
		}

		return sizeInt
	}

	fmt.Printf("'%s' is NOT a valid size\n", size)

	return 0
}

func validateAndSanitizeCep(cep string) string {
	cep = strings.TrimSpace(cep)
	pattern := `^\d{5}-\d{3}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(cep) {
		return cep
	}

	fmt.Printf("'%s' is NOT a valid CEP\n", cep)

	return ""
}

func validateAndSanitizeRules(rules string) string {
	rules = strings.TrimSpace(rules)
	pattern := `^[a-zA-Z ]{1,50}$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return ""
	}

	if re.MatchString(rules) {
		return rules
	}

	fmt.Printf("'%s' is NOT a valid rule\n", rules)

	return ""
}

func validateAndSanitizeLobby(lobby string) int {
	lobby = strings.TrimSpace(lobby)
	pattern := `^[sSnN]$`

	re, err := regexp.Compile(pattern)
	if err != nil {
		fmt.Println("Error compiling regex:", err)
		return 0
	}

	if re.MatchString(lobby) {
		switch strings.ToLower(lobby) {
		case "s":
			id, err := GenerateRandomID(11)
			if err != nil {
				fmt.Println("Error generating random ID, try again later:", err)

				return 0
			}
			idInt, err := parseStringToInt(id)
			if err != nil {
				fmt.Println("Error generating random ID, try again later:", err)

				return 0
			}

			return idInt
		case "n":
			// Handle case for "n"
			fmt.Println("Lobby entry is 'n'")

			return 0
		}
	}

	fmt.Printf("'%s' is NOT a valid lobby\n", lobby)
	return 0
}
