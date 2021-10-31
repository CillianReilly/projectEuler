// Similar to Problem 1, this can be naively done by generating the Fibonacci numbers less than 4 million and filtering by even-ness

//A function to generate Fibonacci numbers first:
q)fib:{x,sum -2#x}
k)fib:{x,+/-2#x}

//Generate the list using the while overload of /, then filter:
q)sum f where 0=mod[;2]f:{4000000>sum -2#x}fib/1 1
k)+/f@&0=f-2*_%[;2]f:{4000000>+/-2#x}fib/1 1

// But, by the definition of the Fibonacci sequence, for an entry to be even, it must be that the two prior entries were odd.
// So the sequence must be odd, odd, even, odd, odd, even... etc
// So the even entries must occur at every third number in the sequence
// And there exists a formula for calculating the n-th Fibonacci number directly using the golden ratio

q)phi:0.5*1+sqrt 5
q)fibn:{7h$reciprocal[sqrt 5]*(-). xexp[;y]x,1-x}[phi;]

k)phi:0.5*1+sqrt 5
k)fibn:{7h$(%sqrt 5)*(-). xexp[;y]y,1-y}[phi;]

// Now we can just calculate the even Fibonacci numbers until we exceed 4 million and sum the result:
q)sum{4000000>sum -2#x}{x,fibn 3*count x}/0
k)+/{4000000>+/-2#x}{x,fibn 3*#x}/0
