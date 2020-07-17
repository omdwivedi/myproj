#tuples in python#
#creating the tuples#
person1=("joe","22","pizza")
person2=("shaun","28","pasta")
#list of tuples#
person=(person1,person2)
print(person)#printing the list#

#unpacking of tuple#
for name,age,food in person:
  print(name)
  print(age)
  print(food)
  print()
