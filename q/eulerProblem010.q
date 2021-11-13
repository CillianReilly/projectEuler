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
