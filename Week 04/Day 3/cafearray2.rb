#Unfortunately, our cafe menu script does not show the customers the prices
#One solution would be to set those up in another array.
#Arrays in Ruby are ordered, which is to say that they will always be in the same order that you list them (this is not true of some other classes)

#Let's set up a second array with the prices and provide that as the menu

menu_items = ["Coffee", "Tea", "Hot Chocolate", "Muffin", "Scone", "Donut"]
menu_prices = [1.75, 2.00, 2.50, 3.00, 2.00, 2.50]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

#We are going to use a different loop this time around since we are using two arrays
if response == "y"
  #First, we will initialize a counter
  i = 0
  #Then we need to find out how long our array is. We will use .count. for this
  #Arrays start numbering items at 0. You can try this out in irb. So menu_items[0] is "Coffee"
  #We've starting with item 0 from both arrays, then iterating through the rest of the array
  while i < menu_items.count
    #This time our number is a float instead of a Fixnum because it has decimals
    #To make sure that our decimals are shown correctly, we need to put the sprintf('%.2f', float_value)
    #Try this with only #{menu_prices[i]} to see the difference
    puts "#{menu_items[i]}: #{sprintf('%.2f', menu_prices[i])}"
    #After we have got the matching items from the two arrays, we need to increment our counter to go on to the next pair of items
    # += increments a pre-existing value rather than resetting the variable; otherwise, this would now equal 1
    i += 1
  end
end
