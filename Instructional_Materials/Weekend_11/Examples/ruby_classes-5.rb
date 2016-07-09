#Okay, let's go back and set up the hash we had before
#Then we can find the prices in get_price that way

class Coffee

  def initialize (size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar

    #We are also going to initialize this hash to make it available in the class
    @coffee_prices = {
                    'small' => 1.50,
                    'medium' => 2.00,
                    'large' => 2.50
                    }
  end

  def get_price
    puts "Your total for your #{@size} coffee is $#{sprintf('%.2f', @coffee_prices[@size])}"
  end
end

small = Coffee.new('small')
puts small.get_price
medium = Coffee.new('medium')
puts medium.get_price
large = Coffee.new('large')
puts large.get_price
