// returns the proper divisors of a number
fctr:{-1_distinct f,reverse 7h$x%f:where 0=x mod til ceiling sqrt 1+x}

// sum of divisors 
sd:(sum fctr@)each t:til 1000000

// indexng sd gives the next step in the chain
// built in kdb+ convergence won't account for numbers that end up on a chain that doesn't contain themselves
// e.g. 1336 > 1184 > 1210 > 1184 
// e.g. (sd/)1336 will not halt

c:{y,x last y}[sd;]/[{not last[x]in -1_(),x};]each t
{min x c?max c:count each x}c where(=/)(first;last)@/:\:c


// for each number add it to the indices of it's multiples
// very slow
// sd:0,{{@[x;last[y];first[y]+]}/[x#0;flip(t;-1+t*2+(-1+x div t:1+til floor 0.5*x)#\:til x)]}1000000
