// An intutive solution is iterate along the list of numbers from 1 to 20, taking the running product, but dividing out by the gcd at each step
// The Euclidean algorithm is an efficient method of calculating the gcd of two numbers

q)gcd:{first last({y,x mod y}.)/(x;y)}
k)gcd:{*(*|:)(y,x-y*_x%y}.)/(x;y)}

q){7h$(x*y)%gcd[x;y]}/[reverse 1+til 20]
k){7h$(x*y)%gcd[x;y]}/|1+!20 
