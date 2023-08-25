// Calculate pentagonal numbers and at each step check if the latest added and subracted from the rest of the list is also pentagonal
// We can stop once we hit the first occurence, as the gaps between numbers is strictly increasing

// Function to generate the n-th pentagonal number
p:{0.5*x*(3*x)-1}
// Function to test if a number is pentagonal
isP:{not(1+sqrt 1+24*x)mod 6}
// Function to check if addition and subtraction are pentagonal
f:{all isP abs x-\:/:(neg\)last x}

// This solution calls f twice 
{last[x]-p 1+f[x]?1b}{not any f x}{x,p 1+count x}/1 5f

// Not repeating f takes roughly the same time
(0<type@){$[not any d:f x:x,p 1+count x;x;last[x]-x d?1b]}/1 5f
