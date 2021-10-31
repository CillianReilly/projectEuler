// Can we generate all the palindromic numbers first, then see which are made of two 3 digit numbers?

l:9009+til 1+(999*999)-9009

fctr:{where 0=x mod til ceiling sqrt x}
l:l where{x~reverse x}each string l

f:f,'7h$l%'f:enlist each fctr each l:l where{x~reverse x}each string l
max raze prd each f@\:'where each all each 3=count each''string f

// Not so way quicker
max raze prd each f@\:'where each all each 3=count each''string f:f,'7h$l%'f:enlist each fctr each l:l where{x~reverse x}each string l
