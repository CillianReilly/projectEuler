// Straightforward method
q){x-sum y}. l*l:(sum v;v:1+til 100)
k){x-+/y}. l*l:(+/v;v:1+!100)

// There exist formulae to calculate these values directly.
// Given the vector capibilites of q, small limits (like 100 here) will be quicker to use the above brute force method

// Square of sum formula:
q)sqSum:7h$xexp[;2]%[;2]prd 0 1+
k)sqSum:7h$xexp[;2]%[;2](*/)0 1+

// Sum of squares formula:
q)sumSq:7h$%[;6]prd 0 1 1+1 1 2*
k)sumSq:7h$%[;6](*/)0 1 1+1 1 2*

// Then we can calculate the answer directly:
q)last deltas(sumSq;sqSum)@\:100
k)*|-':(sumSq;sqSum)@\:100
