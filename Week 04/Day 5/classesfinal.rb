#Okay, let's go back and set up the hash we had before
#Then we can find the prices in get_price that way

class Coffee


  def initialize (size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar

    #We are also going to initialize this hash and make it available in the class
    @coffee_prices = {
                    's' => 1.50,
                    'm' => 2.00,
                    'l' => 2.50
                    }
  end

  def get_price
    puts "Your total is #{@coffee_prices[@size]}"
  end
end

small = Coffee.new('s')
puts small.get_price
