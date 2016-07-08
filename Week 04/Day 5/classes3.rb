#Let's make our coffee objects closer to the ones we need for our cafe
#We will want to know the size and whether the customer wants sugar or milk/cream/soy
#We will also write some class methods to help us with our coffee objects

class Coffee
  #We always need to know the size of the coffee
  #However, liquid and sugar are optional
  #We can set those to nil in the initialize method. Unless they are provided as part of the class object, we will assume the customer doesn't want them
  def initialize(size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar
  end

  def size
    @size
  end

  def liquid
    @liquid
  end

  def sugar
    @sugar
  end
end

order1 = Coffee.new("small", "soy milk", "sugar")
puts "The customer wants a #{order1.size} coffee with #{order1.liquid} and #{order1.sugar}"
order2 = Coffee.new("large", "milk")
puts "The customer wants a #{order2.size} coffee with #{order2.liquid}"
#You can access the variable order2.sugar, but it will be nil
