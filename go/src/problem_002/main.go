package main

import (
	"fmt"
)

func main(){
	sum, pval, cval := 0, 1, 2

	for ; cval < 4000000; {
		if cval % 2 == 0 {
			sum += cval
		}

    pval, cval = cval, pval + cval
	}

	fmt.Printf("Sum: %d\n", sum)
}
