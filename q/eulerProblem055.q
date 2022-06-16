// Straight forward, but feels a bit much like brute force
// Just repeat the algorithm while:
// 1. The last output is not palindromic or the output is the first number (to take care of already palindromic numbers)
// 2. The total number of applications of the algorithm does not exceed 50

// Function to reverse the digits of an integer
q)r:{10 sv reverse 10 vs x}
q)sum{50=count{((1=count x)or not last[x]=r last x)and(50>count x)}{x,last[x]+r last x}/x}each 1+til 10000

k)r:{10/:|10\:x}
k)+/{50=#{((1=#x)|~(*|x)=r(*|x))&(50>#x)}{x,(*|x)+r(*|x)}/x}'1+!10000
