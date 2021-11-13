// We can use similar prime generating logic to problem 7 here
q)prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}
k)prime:{$[x=1;0b;x=2;1b;0=x-2*_x%2;0b;1=+/0=x-l*_x%l:!-_-sqrt 1+x]}

// All prime numbers greater than 3 are of the form 6k+1 or 6k-1. We can use this to narrow down prime candidates
// A function to increment. If congruent to 5 mod 6, add 2, if congruent to 1 mod 6, add 4
q)inc:{x+(x+3)mod 6}
k)inc:{x+{x-6*_x%6}x+3}

// Run while the next prime candidate is less than 2 million, sum and add 2+3
q)5+/(2000000>inc@){(not prime@)inc/inc x}\5
k)5+/(2000000>inc@){(~prime@)inc/inc x}\5

// There is a far more efficient method of finding primes when we know the upper limit however.
// The Sieve of Eratosthenes iteratively removes composite numbers from the list of prime candidates up to the given limit

// Function to implement the sieve:
// Generate a list of all numbers of the form 6k+1 or 6k-1 up to the limit
// Iterate through this list, adding the first number to the primes and removing it and all multiples from the original list
q)sieve:{raze{(sqrt[x]>y 0)and not 0=count y:last y}[x;]{(x[0],f;x[1]where not 0=x[1]mod f:x[1;0])}/(2 3;raze -1 1+/:6*1+til ceiling(x-5)%6)}
k)sieve:{,/{(sqrt[x]>y 0)&~0=#y:*|y}[x;]{(x[0],f;x[1]@&~0=x[1]-f*_x[1]%f:x[1;0])}/(2 3;,/-1 1+/:6*1+!-_-(x-5)%6)}

// Sieve all primes less than 2 million and sum
q)sum sieve 2000000
k)+/sieve 2000000


// A slower implementation of the sieve that iterates over a boolean list
//sieve:{2+where last{sqrt[x]>y 0}[x;]{(1+y[0];$[y[1]@y[0]-2;@[y[1]and not 0=(x%y[0])mod 1;y[0]-2;:;1b];y[1]])}[2+til x-2;]/(2;(x-2)#1b)}
