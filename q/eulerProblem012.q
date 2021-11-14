// Brute force method: Keep generating the triangle numbers until we hit the first with over 500 factors

// Function to generate triangle numbers:
q)tri:7h$%[;2]prd 0 1+
k)tri:7h$%[;2](*/)0 1+

// Function to return factors:
q)fctr:{distinct f,reverse 7h$x%f:where 0=x mod til ceiling sqrt 1+x}
k)fctr:{?f,|7h$x%f:&0=x-l*_x%l:!-_-sqrt 1+x}

// While number of factors are less than 500, then calculate that triangle number
q)tri(500>count fctr tri::)(1+)/1
k)tri(500>#fctr tri::)(1+)/1
