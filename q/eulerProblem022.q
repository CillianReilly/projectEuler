// Straight forward
// Quicker to sort the list as strings rather than looking up the index first then sorting.

q)sum(1+til count n)*sum each 1+.Q.A?n:asc ","vs except[;"\""]first read0`:eulerProblem022.txt
k)+/(1+!#n)*+/'n:x@<x:1+.Q.A?","\:x@&~"\""=x:*0::`:eulerProblem022.txt
