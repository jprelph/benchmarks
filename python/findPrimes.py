
import math

def SieveOfEratosthenes(n): 
       
    primes = []
    b = [True for i in range(n + 1)] 
    i = 2
    
    b[0] = False
    b[1] = False

    while (i * i <= n): 
        if (b[i] == True): 
            for j in range(i * 2, n + 1, i): 
                b[j] = False
        i += 1

    for i in range(n + 1): 
        if b[i]: 
            primes.append(i)
    return primes
  
if __name__=='__main__': 
    primes = SieveOfEratosthenes(10000000)
    print(len(primes))

        