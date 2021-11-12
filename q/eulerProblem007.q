// Brute force method of just testing increasing numbers for primeness
q)prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}
k)prime:{$[x=1;0b;x=2;1b;0=x-2*_x%2;0b;1=+/0=x-l*_x%l:!-_-sqrt 1+x]}

// Starting at 3 allows us to skip the even numbers, incrementing by 2
q)9999{(not prime@)(2+)/2+x}/3
k)9999{(~prime@)(2+)/2+x}/3

// A more elegant method
// A prime numbers greater than 3 are of the form 6k+1 or 6k-1. We can use this to narrow down prime candidates

// A function to increment. If congruent to 5 mod 6, add 2, if congruent to 1 mod 6, add 4
q)inc:{x+(x+3)mod 6}
k)inc:{x+{x-6*_x%6}x+3}

q)9998{(not prime@)inc/inc x}/5
k)9998{(~prime@)inc/inc x}/5
