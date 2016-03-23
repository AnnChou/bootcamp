#This method is kind of arbitrary, I just wanted to clean up the code :)
#It is a nice example of passing in an argument!
def show_menu(menu)
  menu.each do |item|
    puts "#{item[0]}: #{sprintf('%.2f', item[1])}"
  end
end

def get_order(menu)
  puts "What would you like to order?"
  order = gets.chomp

  puts "How many #{order}(s) do you want?"
  quantity = gets.chomp

  price = ''

  menu.each do |item|
    if item[0] == order
      price = item[1]
    end
  end

  total_price = price * quantity.to_i
  #This method returns the total price for each part of the order
  #We get the return value by stating it explicitly. If our method does not have a return, it won't give us back the value.
  #When this method is called, the value returned is this one. We then save it to the variable total_price in the script.
  return total_price
end

menu = [["Coffee", 1.75], ["Tea", 2.00], ["Hot Chocolate", 2.50], ["Muffin", 3.00], ["Scone", 2.00], ["Donut", 2.50]]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

if response == "y"
  show_menu(menu)
end

total_price = get_order(menu)

puts "Would you like to order anything else? y/n"
continue_order = gets.chomp

while continue_order == 'y'
  #If we already have a total_price, then we want to add the next part of our order to it
  #We use += to increase a value that we already have
  total_price += get_order(menu)
  puts "Would you like to order anything else? y/n"
  continue_order = gets.chomp
end

puts "Your order total is #{sprintf('%.2f', total_price)}"
