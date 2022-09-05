// This just amounts to replacing the appropriate strings in the correct order

r:("MCCCC";"DCCCC";"CCCC";"LXXXX";"XXXX";"VIIII";"IIII")!("MCD";"CM";"CD";"XC";"XL";"IX";"IV")

q)(-/)('[count;raze]each)(i;ssr/[;key r;value r]each i:read0`:eulerProblem089.txt)
k)(-/)('[#:;,/]')(i;.q.ssr/[;!r;. r]'i)0::`:eulerProblem089.txt

// For the generalists - Roman/Decimal conversion functions
n:"IVXLCDM"!1 5 10 50 100 500 1000
decimalise:sum n ssr/[;value r;key r]@
romanise:{ssr/[;key r;value r]last(not 0=first@){(x[0]-;x[1],n?)@\:v(v:value n)bin x 0}/(x;"")}
(-/)('[count;raze]each)(i;('[romanise;decimalise])each i)
