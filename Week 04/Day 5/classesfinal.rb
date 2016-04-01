#Our Coffee class now works pretty well, as long as everyone inputs information correctly
#If we get any bad input, though, we don't have any safeguards in place (go back to classes5.rb and try to pass a non-existent size when instantiating your class)

#Let's add some validations to help prevent our script from crashing
#Rails has tools that will allow us to do this relatively easily with our data, but it is good practice to think about possible problems in our code

class Coffee

  def initialize (size, liquid=nil, sugar=nil)
    @size = size
    @liquid = liquid
    @sugar = sugar

    @coffee_prices = {
                    'small' => 1.50,
                    'medium' => 2.00,
                    'large' => 2.50
                    }
  end

  def validate_input
    #Let's compare the input we get for size to the sizes that we have in our coffee_prices hash
    #This method looks at the keys in the coffee_prices hash
    if @coffee_prices.key?(@size)
      #self here is the object that we are currently working with in our code
      #For example, when the first example below runs this code, self is equal to our 'small' object
      #If you want to call a method within a class on the object, then you use self
      #In this case, if our coffee size is valid, we immediately do the get_price method
      self.get_price
    else
      #If our coffee size is invalid, then we print this response instead
      puts "Invalid size, please try again"
    end
  end

  def get_price
    puts "Your total for your #{@size} coffee is $#{sprintf('%.2f', @coffee_prices[@size])}"
  end
end

small = Coffee.new('small')
medium = Coffee.new('medium')
large = Coffee.new('large')
invalid = Coffee.new('invalid')

small.validate_input
medium.validate_input
large.validate_input
invalid.validate_input
