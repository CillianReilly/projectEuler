// Generate the pandigital candidates and then step through them in descending order

// function to test for primes
prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}

// function to generate pandigital numbers
f:raze@{(c-1){@[y;i;:;]reverse y i:0 1+y?x}[c;]\(c:1+count x),x}'

// We can narrow down our search space by noting the result of
// 1+where sums[1+til 9]mod 3
// i.e. only pandigital numbers with 4 or 7 digits are not divisible by 3, so we can just test those
first(not prime first@){1_x}/1j,desc 10 sv/:raze(6 f\1#1)3 6

