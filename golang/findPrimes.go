package main

func sieveOfEratosthenes(n int) (primes []int) {
	b := make([]bool, n)

	for i, _ := range b {
		b[i] = true
	}
	for i := 2; i*i < n; i++ {
		if b[i] == true {
			for j := i * i; j < n; j = j + i {
				b[j] = false
			}
		}
	}
	for i := 2; i < len(b); i++ {
		if b[i] == true {
			primes = append(primes, i)
		}
	}
	return primes
}

func main() {
	primes := sieveOfEratosthenes(10000000)
	println(len(primes))
}
