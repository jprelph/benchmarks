import java.util.*;

public class findPrimes {


    public static List<Integer> sieveOfEratosthenes(int n) { 
        boolean[] bool = new boolean[n];
        List<Integer> primes = new ArrayList<Integer>();
        
        for (int i = 0; i< bool.length; i++) {
            bool[i] = true;
        }
        for (int i = 2; i*i < n; i++) {
            if(bool[i] == true) {
            for(int j = (i*i); j<n; j = j+i) {
                bool[j] = false;
            }
            }
        }
        for (int i = 2; i< bool.length; i++) {
            if(bool[i]==true) {
                primes.add(i);
            }
        }
        return primes;
    }
      
    public static void main(String[] args)    { 
        List<Integer> primes = sieveOfEratosthenes(10000000);
        System.out.println(primes.size());
    } 
} 
    