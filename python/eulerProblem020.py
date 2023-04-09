# Straight forward. Take the running product, convert to base 10 and sum

def euler_problem_20(input):
  prod=1
  for i in range(1,input):
    prod*=i
  return sum([int(i) for i in str(prod)])

print(euler_problem_20(100))
