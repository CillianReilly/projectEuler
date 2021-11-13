// Brute force. We can use the same logic from problem 4 to filter out duplicates in the result of cross
q)first 7h$prd l@\:where 1000=sum l:l,enlist sqrt sum l*l:l@\:where not(>/)l:flip l cross l:1+til 1000
k)*7h$*/l@\:&1000=+/l:l,,sqrt(+/)l*l:l@\:&~(>/)l:+,/l,/:\:l:1+!1000
