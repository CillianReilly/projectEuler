// This can be thought of as a similar problem to 18 and 67.
// By extending the matrix we can use the same algorithm to solve

// 0: lets us load the matrix directly instead of using read0 and parsing
q)m:(80#"J";",")0:`:eulerProblem081.txt

// We can use indexing to turn the matrix into a pyramid
// Then fill the nulls with a value greater than the max entry in the pyramid so that that path is never taken
q)m:(1+2 max/m)^m ./:/:{reverse[x],'x:til x}each 1+til(2*count m)-1

// Finally, apply a similar algorithm to 18 and 67, but use a moving min rather than a moving max
q){y+1_2 mmin x}/[reverse m]

k)m:(80#"J";",")0:`:eulerProblem081.txt
k)m:(1+2|//m)^m ./:/:{(|x),'x:!x}'1+!(2*#m)-1
k){y+1_&':x}/|m
