// Straight forward - Find the factors of all integers up to 28123, filter out the none abundant numbers, find the distinct sums of the remaing and remove them

// Function to return the factors
q)fctr:{distinct f,reverse 7h$x%f:where 0=x mod til ceiling sqrt 1+x}
k)fctr:{?f,|7h$x%f:&0=x-l*_x%l:!-_-sqrt 1+x}

q)sum v except distinct raze a+/:a:v where{x<sum -1_fctr x}each v:1+til 28123
k)+/v@&~v in ?,/a+/:a:v@&{x<+/-1_fctr x}'v:1+!28123
