package user_interface

import (
	"fmt"
	"strconv"
)

func parseStringToInt(str string) (int, error) {
	num, err := strconv.Atoi(str)
	if err != nil {
		fmt.Println("Error converting string to int:", err)
		return 0, err
	}
	return num, err
}
