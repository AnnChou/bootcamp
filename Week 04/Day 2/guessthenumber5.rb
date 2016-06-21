#We are going to add one more feature to our guess the number game
#If the player wants to see the previous numbers, we will keep them available in an array
#An array keeps our information in an ordered list. We will look more extensively at arrays later
#If you want to see what is in this array as you move through the code, require 'pry' and put in a binding pry

right_number = rand(1..100)

puts "Please guess a number between 1-100"
guessed_number = gets.chomp

#Here we are initializing our array
list_of_guesses = []

while guessed_number.to_i != right_number do
  if guessed_number.to_i > 100 or guessed_number.to_i < 0
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too high or too low. The number must be between 1-100. Try again"
    guessed_number = gets.chomp
  elsif guessed_number.to_i > right_number
    #We are adding the guessed_number to our array list_of_guesses
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too high. Try again"
    puts "Do you want to see your guesses? Type 'y' for 'yes' or any other key for 'no'"
    see_array = gets.chomp
    if see_array == 'y'
      #This line will iterate through the array
      #Each value in the array is assigned to the variable 'guess'
      list_of_guesses.each do |guess|
        #We will then print each value of guess
        #After we're done, we move to the next value in the array and print that
        puts guess
      end
    end
    puts "Try another guess"
    guessed_number = gets.chomp
  elsif guessed_number.to_i < right_number
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too low. Try again"
    puts "Do you want to see your guesses? Type 'y' for 'yes' or any other key for 'no'"
    see_array = gets.chomp
    if see_array == 'y'
      list_of_guesses.each do |guess|
        puts guess
      end
    end
    puts "Try another guess"
    guessed_number = gets.chomp
  end
end

puts "You got the right number!"
