// Straightforward. Generate all the possible products of two 3-digit numbers, then check for palindromic-ness

// Some tips to speed up the computation:
// Filtering out what would be duplicate factors before multiplying e.g. 321*123 is not included but 123*321 is
// Sorting the result of the multiplication allows us to just pick up the last index of the palindromic numbers, rather than finding the max of all
// Casting the list to string is faster than converting each to a list of digits using 10 vs

q)l last where{x~reverse x}each string l:asc prd l@\:where not(>). l:flip l cross l:100+til 900
k)l@*|&{x~|x}'$l:l@<l:(*). l@\:&~(>). l:+,/l,/:\:l:100+!900
