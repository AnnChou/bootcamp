#Yesterday we briefly went over arrays, but we didn't explore them very much
#Let's start today by imagining that we are making a point of sale (cash register) for a cafe
#We're going to put the menu in an array and list the items

#For the next two days, it is highly advisable for you to think of your own kind of store (or get creative: museum, collection, whatever you want) to follow along in the activity time.
#That will get you good experience with these concepts!

menu_items = ["Coffee", "Tea", "Hot Chocolate", "Muffin", "Scone", "Donut"]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

if response == "y"
  #Here we are iterating over the array and printing out each item
  #The array needs .each appended to it, then 'do' to iterate over it
  #You can put anything between the pipes ||. For instance, instead of menu_item, you could put 'a' or 'mi' for menu item
  #Whatever you put between the pipes is identifying the individual item in the array
  menu_items.each do |menu_item|
    #We are printing each individual item in the array
    #If you had 'a' between the pipes, you would need 'puts a' instead
    puts menu_item
  end
end

# .count allows us to know how long the array is
number_of_items = menu_items.count

#The #{} is another way of putting a variable in a string
#Remember that you could also put the variable in with '+ number_of_items +' as we did on Monday
puts "We have #{number_of_items} items on the menu today"
puts "What would you like to order?"
cafe_order = gets.chomp

#Let's make sure that we have that item. If we do .include?, we can search the array

if menu_items.include?(cafe_order)
  puts "Great, we have that today!"
else
  puts "Sorry, we don't have that"
end
