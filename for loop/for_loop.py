#for loop# 
import turtle
Om_turtle=turtle.Turtle()
Om_turtle.speed(15)
def square():
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)

for count in range(4):
  square()
