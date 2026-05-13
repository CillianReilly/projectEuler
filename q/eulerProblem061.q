tri:{floor 0.5*x*x+1}45+til 96
squ:{x*x}32+til 68
pen:{floor 0.5*x*-1+3*x}26+til 56
hex:{x*-1+2*x}23+til 48
hep:{floor 0.5*x*-3+5*x}21+til 43
oct:{x*-2+3*x}19+til 40

n:(tri;squ;pen;hex;hep;oct)
n:n@'where each 9<n mod 100

t:{6 raze/{$[7>count y;.z.s[x;]each y,/:x where x within 0 99+100*last[y]mod 100;y]}[x;]each x}distinct asc raze n
t:-1_'t where(=/)flip(first;last)@\:/:t
distinct sum each t where 0=count each{x _first where y in'x}/[n;]each t


// better: start with octogana numbers and search against the rest
// for each match drop that list and recurse

// general figurate formula
// fig:{floor 0.5*(y*4-x)+(x-2)*y*y}
// n:fig'[3 4 5 6 7 8;](45+til 96;26+til 68;26+til 56;23+til 48;21+til 43;19+til 40)
// n:n@'where each 9<n mod 100

