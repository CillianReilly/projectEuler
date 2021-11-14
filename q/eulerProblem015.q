// This can be solved by a combinatorial solution
// No matter the path chosen, we must make 20 right movements and 20 down movements in total.
// The problem becomes how many ways can we place the right movements, as this will determine all of the down movements.
// This of course is given by (20+20) choose 20
// Here are two ways of calculating this value, known as a binomial coffecient

// Using pascals triangle. We are only interested in the last row, so we can use / rather than \ to generate:
q)pa:{(+)prior x,0}/[;1]
k)pa:{+':x,0}/[;1]

// Indexing into this row gives us the answer:
q)pa[40]20
k)pa[40]20

// Note, kdb+ struggles with large numbers, so the below actually gives an incorrect answer
// Or we can use the formula for n choose k, n!/(k!*(n-k)!)
// We first need a function for computing factorials
q)fctl:prd 1+til::
k)fctl:*/1+!::

// For n=20+20 and k=20
q)fctl[40]%f*f:fctl 20
q)fctl[40]%f*f:fctl 20

// We can avoid this however by simplifying the formula before computing.
// Plugging in n=2n and k=n reduces the formula to the product from i=1 to n of (n+i)/i
q)7h$prd %[;i]20+i:1+til 20
k)7h$*/%[;i]20+i:1+!20
