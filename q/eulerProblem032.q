// Straight forward method. Calculate the factors of all candidates and check if the concatentation of multiplicand/multiplier/product is pandigital 

// We can optimise by noticing that the product can only be 4 digits - any other length is not possible.
// Specifically, products must be in the the range 1234-9876
// candidates:
c:1234+til 8643

// A function to return factor pairs
fctr:{f,'x%f:where 0=x mod til ceiling sqrt 1+x}
sum c where{"123456789"in asc each string[x],/:raze each string fctr x}each c

// Some further optimisations:
// Pandigital numbers can't contain 0
c:c where not"0"in/:string c
// Pandigital numbers can't repeat digits
c:c where 4=('[count;distinct])each string c

sum c where{"123456789"in asc each string[x],/:raze each string fctr x}each c
