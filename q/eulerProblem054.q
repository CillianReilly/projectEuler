order:"23456789TJQKA"
sort:{x iasc order?first each x}
hands:(flip sort@)each'0 5_/:" "vs/:read0`:eulerProblem054.txt

st:{0<count order ss first x}
fl:{1=count distinct last x}
nk:{x=count each group first y}	
fk:nk[4;]
tk:nk[3;]
op:nk[2;]
tp:{1 2 2~asc value count each group first x}

rules:`index xkey update index:i from
  flip`cond`high!flip(
    ({all(st x;fl x;x[0;0]~"T")};  first);      // royal flush
    ({all(st x;fl x)};             first);      // straight flush
    (any fk@;                      where fk@);  // four of a kind
    ({all(tk x;op x)};             where tk@);  // full house
    (fl;                           first);      // flush
    (st;                           first);      // straight
    (any tk@;                      where tk@);  // three of a kind
    (tp;                           where op@);  // two pair
    (any op@;                      where op@);  // one pair
    ({1b};                         first)       // high card
    )

// this can be improved to not run each rule against every hand
// rather iterate through them and stop at the first match
f:{$[not(=/)i:?'[;1b](exec cond from rules)@\:/:x;
        (</)i;
     not(=/)h:last each(rules[;`high]@/:i)@'x;
        (>/)order?h;
        .z.s x@\:'where each not h=first each x]}

sum f each hands
