#Lists#
list1=[1,2,3]  #creating a list#
print(list1) #printing the list#
#creating list of multiple data types#
list2=[1,"string","character string",5.4,[1,2,3]]
#printing the list#
print(list2)
#print the index element in list#
print(list2[0])
#function in list#
name=["john","ram","shayne"]
print(name)
name.append("jerry")#adding element to the list#
print(name)#printing the list with added element#
#to add element at a specific position in the list#
name.insert(0,"ash")#use insert #
print(name)
name.remove("ram")#to remove element use remove#
print(name)
name.reverse()#to reverse the list#
print(name)
#sorting#
number=[4,6,5,3,9,1,2]#create a list #
print(number)#printing the list#
number.sort()#sorting the list#
print(number)#printing the sorted list#
#iterarting the list#
for number in number:
  print(number)
