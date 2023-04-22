// Produce all permutations of 9-digit pandigital numbers
// By some analysis, the solution must be the concatenation of x*1 2, where x is a 4 digit number, starting with 9

// Produces all possible permutations of 1-8
f:raze@{(c-1){@[y;i;:;]reverse y i:0 1+y?x}[c;]\(c:1+count x),x}'

// Append leading 9 and convert to base 10
// Split into base 100000 (using 100000 vs/: is slower than div) 
// And compare where the 2nd element is double the first
first{x where(=/)flip d,'.5*x-y*d:x div y}[;100000]10 sv/:9,'7 f/1#1
