#Today we will be briefly looking at how to create classes in Ruby
#Classes are part of a much bigger concept called object-oriented programming
#We won't have a chance to dig into this topic in detail, but Rails uses classes often so we're going to introduce the topic

#Technically, almost everything in Ruby is an object that belongs to a class
#You can see this by going into irb and creating any type of variable (such as a string, array or hash)
#If you call '.class' on that variable, it will tell you what class it belongs to (strings, arrays and hashes are classes in Ruby)

#Let's make our own class
#Classes are shown with a capital letter to start
#Right now our class doesn't do anything

class Coffee
  #Classes need an 'end'
end

#Let's create an example of our class and see if it belongs to that class
cup_of_coffee = Coffee.new
puts cup_of_coffee.class
#This isn't very exciting, but it shows we set it up correctly :)
