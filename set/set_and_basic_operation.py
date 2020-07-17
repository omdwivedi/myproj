#Sets in python#
s={"blueberry","raspberry"}
print(s)
s.add("strawberry")
print(s)
l={1,2,3,3,4,4,5,5}
no_duplicate_set=set(l)
print(no_duplicate_set)
#performing operation on list#
library_1={"Harry porter","Hunger games","lord of the ring"}
library_2={"Harry porter",'game of throne'}
all_books_in_town=library_1.union(library_2)
print(all_books_in_town)
#books in both library#
books_in_both_library=library_1.intersection(library_2)
print(books_in_both_library)
#difference between two sets#
diff=library_1.difference(library_2)
print(diff)
