// naive - pick a large number, generate all the cubes and group
// no guarantee this would give the correct answer for numbers other than 5
prd 3#min 1+s?where 5=count each group s:asc each 10 vs/:prd 3#enlist 1+til 10000


// the correct method
// start at 1 and generate cubes iteratively
// at each step, check if any grouping has the target number
// if it does, we need to continue until we reach a cube with one more digit than the target grouping
// this ensures the program doesn't halt too early e.g. we find a grouping with 5 entries, but there may exist another group which contains both a smaller and larger cube which hasn't been generated yet


// this kind of procedure is where kdb falls down
// for a target of 5, 12-13 seconds vs 0.3 above 
f:{@[x;;,;1#i]asc 10 vs prd 3#i:1+max max each value x}
cond:{c:count each y;all(not b;$[b:x in c;(max count each key y)>min count each where x=c;1b])}[5;]
{prd 3#min min each y where x=count each y}[5;] cond f/{x!x}2 enlist/1




