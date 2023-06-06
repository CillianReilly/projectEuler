// Generate all 0 to 9 pandigitals and test

f:raze@{c{@[y;i;:;]reverse y i:0 1+y?x}[c;]\(c:count x),x}'
r:9 f/1#0
sum 10 sv/:r where{not any(10 sv/:y x)mod 2 3 5 7 11 13 17}[-2_flip 2 next\1+til 9;]each r


// Improvements
// 5 has to be the 6th digit
// 4th digit must be even
