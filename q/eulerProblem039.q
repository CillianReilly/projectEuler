// We can use Euclid's formula to generate primitive Pythagorean triplets
// https://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple  

// gcd function to test co-primeness
gcd:{first last({y,x mod y}.)/(x;y)}

// function to generate the triple
pt:{((-/)s;prd 2,x;sum s:x*x)}

c:{x where all(1=gcd ./:flip@;any not mod[;2]@;>/)@\:flip x:x cross x}1+til 21
{x?max x}count each group raze s*'1+til each 1000 div s:sum each pt each c
