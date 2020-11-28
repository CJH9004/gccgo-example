package main

import (
	"fmt"

	"pkg"
)

func main() {
	fmt.Println(pkg.Add(1, 2))
	fmt.Println(pkg.Sub(5, 2))
	fmt.Println(pkg.CAdd(3, 4))
}
