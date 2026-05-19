// implements the algorithm described here:
// https://en.wikipedia.org/wiki/Periodic_continued_fraction#Canonical_form_and_repetend

g:{[S;a0;x]
  a:x 0;d:x 1;m:x 2;
  m:(d*a)-m;
  d:(S-m*m)div d;
  a:(m+a0)div d;
  (a;d;m)
  }

f:{
  a0:floor sqrt x;
  cond:not(2*a0)=first@;
  count 1_cond g[x;a0;]\(a0;1;0)
  } 

sum mod[;2]f each{til[x]except sums 0,1+2*til floor sqrt x}10000

\

further reading material:

https://math.stackexchange.com/questions/265690/continued-fraction-of-a-square-root#comment9922309_265697
https://projecteuler.net/thread=64#1818
https://projecteuler.net/thread=64;page=5#258796
https://en.wikipedia.org/wiki/Periodic_continued_fraction#Canonical_form_and_repetend
https://web.math.princeton.edu/mathlab/jr02fall/Periodicity/mariusjp.pdf
https://math.stackexchange.com/questions/2215918/continued-fraction-of-sqrt67-4/2216011#2216011
