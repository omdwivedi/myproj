#square formation using turtle module#
import turtle
Om_turtle=turtle.Turtle()
#defining a square function#
def square():
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)
  Om_turtle.right(90)
  Om_turtle.forward(100)

square()
#after square moving forward#
Om_turtle.forward(140)

#calling square function again#
square()
