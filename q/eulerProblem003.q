// Straightforward, we first calculate the factors of the number by testing up to the square root, and then test those for prime-ness

// Function to return factors
q)fctr:{f,reverse 7h$x%f:where 0=x mod til ceiling sqrt x}
k)fctr:{f,|7h$x%f:&0=x-l*_x%l:!-_-sqrt x}

// Function to test for primes
q)prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt x]}
k)prime:{$[x=1;0b;x=2;1b;0=x-2*_x%2;0b;1=+/0=x-l*_x%l:!-_-sqrt x]}

q)f last where prime each f:fctr 600851475143
k)f@*|&prime'f:fctr 600851475143


// This can also be done far more eloquently by finding the smallest prime divisor and dividing out
// We can then repeat the process on the result until the result is 1, at which point the previous result was the largest prime factor
q)last -1_(not 1=){7h$x%mod[x;](2+)/3}\600851475143
k)*|-1_(~1=){7h$x%{x-y*_x%y}[x;](2+)/3}\600851475143
