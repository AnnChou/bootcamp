#Let's write a method to figure out the price of our coffee

class Coffee

  def initialize(size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar
  end

#This method looks up the price based on the @size variable that was initialized when the object was created
#Each new Coffee object will have its @size set. In other words, @size is reset for each individual object.
  def get_price
    if @size == 'small'
      puts "Your total is $1.50"
    elsif @size == 'medium'
      puts "Your total is $2.00"
    elsif @size == 'large'
      puts "Your total is $2.50"
    else
      puts "Sorry, we don't have that size"
    end
  end
end

small = Coffee.new('small')
puts small.get_price
medium = Coffee.new('medium')
puts medium.get_price
large = Coffee.new('large')
puts large.get_price
invalid_choice = Coffee.new('xlarge')
puts invalid_choice.get_price
