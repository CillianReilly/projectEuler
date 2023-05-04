// We can pick an upper bound (in this case 10000) and test the odd composite numbers less than the bound

sqr:{x*x}

// Sieve of Eratosthenes
sieve:{raze{(sqrt[x]>y 0)and not 0=count y:last y}[x;]{(x[0],f;x[1]where not 0=x[1]mod f:x[1;0])}/(2 3;raze -1 1+/:6*1+til ceiling(x-5)%6)}

// Return odd composities up to last prime in input
oc:{(2+where(2+til last x)mod 2)except x}

// Exclude numbers of the form p+2*q*q from odd composite list
{first oc[p]except raze(p:sieve sqr x)+\:/:2*sqr 1+til x}100

// Above relies on some trial and error to set the upper bound
// Below solution is slower, but will run until the solution is found

// function to test for primes
prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}

// Step through the odd composite numbers and and test if it can be written as p+2*q*q
{any 0=mod[;1]sqrt .5*x-sieve x}{prime(2+)/2+x}/9
