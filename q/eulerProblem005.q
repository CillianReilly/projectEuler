// This is a really nice problem with many nice solutions

// First solution
// Take the running product of the first 20 integers, but divide out by the greatest common divisor at each step.
// This has the effect of only including prime factorisations not seen before in the product

// Function for calculating the gcd of two integers
q)gcd:{y-(reverse(x;y)mod/:1+til y)?0 0};
k)gcd:{y-(|{x-y*_x%y}/:[(x;y);1+!y])?0 0};

//Can we also calculate gcd starting at the smaller number work down in 1's until a number divides evenly until both - really inefficient, no point checking a number if it's not a factor
gcd2:{(not all 0=mod\:[x,y;]@)(-1+)/min x,y} - this is slowest

// Calculate the gcd by finding prime factorisations and taking what's common
gcd3:{prd(inter/)pfctr each asc x,y}


//Prime factors
pfctr:{asc 7h$(%)prior reverse -1_(not 1=){7h$x%mod[x;](1+)/2}\x}

prd raze(#').(value;key)@\:max count each'group each pfctr each 2+til 19
