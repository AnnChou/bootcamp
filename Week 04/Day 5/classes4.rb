#We can write our own methods to figure out the price of our coffee

class Coffee

  def initialize(size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar
  end

  def get_price
    if @size == 's'
      puts "Your total is $1.50"
    elsif @size == 'm'
      puts "Your total is $2.00"
    elsif @size == 'l'
      puts "Your total is $2.50"
    else
      puts "Sorry, we don't have that size"
    end
  end
end

small = Coffee.new('s')
puts small.get_price
medium = Coffee.new('m')
puts medium.get_price
large = Coffee.new('l')
puts large.get_price
invalid_choice = Coffee.new('x')
puts invalid_choice.get_price
