package user_interface

import (
	"strconv"
)

func parseStringToInt(s string) (int, error) {
	return strconv.Atoi(s)
}

func parseIntToString(num int) string {
	return strconv.Itoa(num)
}
