def get_order(menu)
  puts "What would you like to order?"
  order = gets.chomp
  unless menu.include?(order)
    puts "Sorry, we don't have that on our menu. Would you like to order something else?"
    order = gets.chomp
  end

  puts "How many #{order}(s) do you want?"
  quantity = gets.chomp

  price = ''

  menu.each do |item|
    if item[0] == order
      price = item[1]
    end
  end

  total_price = price * quantity.to_i
  return total_price
end

menu = [["Coffee", 1.75], ["Tea", 2.00], ["Hot Chocolate", 2.50], ["Muffin", 3.00], ["Scone", 2.00], ["Donut", 2.50]]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

if response == "y"
  menu.each do |item|
    puts "#{item[0]}: #{sprintf('%.2f', item[1])}"
  end
end

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

puts "Would you like to order anything else? y/n"
continue_order = gets.chomp

while continue_order == 'y'

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
  total_price += price * quantity.to_i
  puts "Would you like to order anything else? y/n"
  continue_order = gets.chomp
end

puts "Your order total is #{sprintf('%.2f', total_price)}"
