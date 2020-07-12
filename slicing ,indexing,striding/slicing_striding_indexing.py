#indexing slicing striding#
digit=[0,1,2,3,4,5,6,7,8,9]
print(digit)
print (digit[0])#indexing#
print(digit[-2])# negative indexing#
print(digit[0:3])#slicing#
name="first class"
print(name[0:5])
print(digit[0:10:1])#striding#
print(digit[0:10:2])
for i in range(len(digit)):
  print(digit[0:i]) 
  
  #slicing#
for i in range(len(digit)):
  print(digit[i:i+3])


