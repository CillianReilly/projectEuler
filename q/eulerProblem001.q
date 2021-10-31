//This can be quickly (and naively) done with a where filter.
q)sum l where any 0=(l:1+til 999)mod/:3 5
k)+/l@&|/0=l-/:x*_(l:1+!999)%/:x:3 5

// But, it is more efficient to just generate the multiples of 3 and 5 instead
// We need to subtract the multiples of 15 once to avoid double counting
q){x+y-z}.{sum y*1+til x div y}[999;]each 3 5 15
k){x+y-z}.{+/y*1+!_x%y}[999;]'[3 5 15]
