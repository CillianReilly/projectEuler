// Brute force method: test numbers of the form 6k +/- 1 until we've found 11 

// A function to increment. If congruent to 5 mod 6, add 2, if congruent to 1 mod 6, add 4
inc:{x+(x+3)mod 6}
prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}

// We can start the process at 11, as 2 3 5 7 are not considered truncatable primes
// String method of truncation
f:{((x;x,y)all prime each"J"$raze(next\[c;];prev\[c:count[s]-1;])@\:s:string y;inc y)}.
sum first(not 11=count first@)f/(();11)

// Faster arithmetic method of truncation
f2:{((x;x,y)all prime each d,7h$1_y-t*d:y div t:10 xexp til ceiling 10 xlog y;inc y)}.
sum first(not 11=count first@)f2/(();11)

// Some other optimisations can be made e.g.:
// Candidates can't include a 2 or 5 unless they are the least significant digit
// Candidates can't end or begin with a non-prime
