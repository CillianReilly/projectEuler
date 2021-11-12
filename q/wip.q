// 3:
//Doesn't work for anything with a square in factorization but avoids starting th
e count from 1 each time, just increases from the last prime
//{(not x=prd@){y,mod[x;](1+)/1+last y}[x;]/1}600851475143
//But for powers of primes we can jsut divide by the last prime from the get go


// 7:
// All primes greater than 3 are of the form 6k+/-1, the increment could be determined by congrunce mod 6, if 1 add 4, if 5 add 2
