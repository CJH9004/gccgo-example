package pkg

func Add(a, b int) int {
	return a + b
}

//extern add
func c_add(a, b int) int

// cannot export c_add directly
var CAdd = c_add
