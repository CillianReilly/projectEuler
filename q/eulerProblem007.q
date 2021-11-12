// Brute force method of just testing increasing numbers for primeness
q)prime:{$[x=1;0b;x=2;1b;0=x mod 2;0b;1=sum 0=x mod til ceiling sqrt 1+x]}
k)prime:{$[x=1;0b;x=2;1b;0=x-2*_x%2;0b;1=+/0=x-l*_x%l:!-_-sqrt 1+x]}

// Starting at 3 allows us to skip the even numbers, incrementing by 2
q)9999{(not prime@)(2+)/2+x}/3
k)9999{(~prime@)(2+)/2+x}/3
