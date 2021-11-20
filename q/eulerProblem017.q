// Straight forward. Store the counts in a dictionary to be retrieved by index
// Give some special treatment to the *teen numbers
q)u:raze[1 10 100*\:1+til 9]!3 3 5 4 4 3 5 5 4 3 6 6 5 5 5 7 6 6 13 13 15 14 14 13 15 15 14
q)t:(11+til 9)!6 6 8 8 7 7 9 8 8
k)u:,/[1 10 100*\:1+!9]!3 3 5 4 4 3 5 5 4 3 6 6 5 5 5 7 6 6 13 13 15 14 14 13 15 15 14
k)t:(11+!9)!6 6 8 8 7 7 9 8 8

q)-16+/{sum$[(tn:x mod 100)within 11 19;t[tn],(10*0<d),u d:x div 100;u d*#[;100 10 1]neg count d:10 vs x]}each 1+til 999
k)-16+/{+/$[(tn:x-100*_x%100)within 11 19;t[tn],(10*0<d),u d:_x%100;u d*#[;100 10 1]@-#d:10\:x]}'1+!999
