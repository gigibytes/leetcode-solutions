x = 0
x += len([p for p in operations if '+' in p])
x -= len([m for m in operations if '-' in m])
x

# or

x = 0
x += 2*len([p for p in operations if '+' in p])
x -= len(operations)
print(x)
