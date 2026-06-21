e=[2]+99*[1]
for i,k in zip(range(2,2+3*(100//3),3),range(2,2*(100//3)+1,2)):
    e[i]=k

state=(e[-1],1)
for y in e[:99][::-1]:
    a,b=state
    state=(b+y*a,a)

print(sum([int(d)for d in str(state[0])]))
