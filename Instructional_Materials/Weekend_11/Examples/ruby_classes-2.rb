#Classes allow us to keep track of similar objects. We can also assign methods in a class
#We are going to add an initialize method to our Coffee class. When you create a new Coffee object, you need to say what type of coffee it is
#You will pass in this information like we did for an argumnet

class Coffee

#When you initialize a new Coffee, you need to provide a type, which is passed in like an argument for a method
#If your class requires that you initialize its attributes, that needs to go in an initialize method
  def initialize(type)
    #A variable with an @ in front of it is called an instance variable
    #The @ sign extends the scope of the variable. Otherwise, it would only be accessible in this method
    @type = type
  end

  #Let's make a method where we print the type of coffee object
  #We can call this method directly on the class object
  def type_of_coffee
    puts "This is a/an #{@type}"
  end
end

mocha = Coffee.new("mocha")
#We're calling the type_of_coffee method on our class object
#This way of calling a method probably looks familiar! We have been using various class methods throughout our code already
#Anything after a period is a class method
puts mocha.type_of_coffee

espresso = Coffee.new("espresso")
puts espresso.type_of_coffee

cafeaulait = Coffee.new("cafe au lait")
puts cafeaulait.type_of_coffee
