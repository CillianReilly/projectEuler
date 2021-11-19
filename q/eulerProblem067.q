// This is the same problem as problem 18, but cannot be brute forced
// The input to the problem is stored in eulerProblem067.txt

q)p:"J"$" "vs/:read0`:eulerProblem067.txt
k)p:"J"$(" "\:)@/:0::`$":eulerProblem067.txt"

q){y+1_2 mmax x}/[reverse p]
k){y+1_|':x}/|p
