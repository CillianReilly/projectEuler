// Straight-forward. The best method is to just generate the dates of the first of every month and test for Sunday-ness using mod
// Most efficient to generate the months as a vector using kdb+'s month datatype 
// Another tip is that `date$month will return the first of the month, which is wwhat we're after here

q)sum 1=mod[;7]`date$1901.01m+til 1200
k)+/1=d-7*_%[;7]d:`date$1901.01m+!1200
