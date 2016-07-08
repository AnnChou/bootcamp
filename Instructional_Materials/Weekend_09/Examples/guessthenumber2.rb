#Our guessed_number game works, but it's not great. Let's make it better!

#First, let's add a statement in case someone guesses a number that is too big or too small
#We could write these conditions as separate if/elsif statements. But we can also combine them.

right_number = rand(1..10)

puts "Please guess a number between 1-10"
guessed_number = gets.chomp

#'Or' checks if either of the conditions is true. If it is, then the code will run.
#You can also use 'and', but then all of the conditions need to be true (wouldn't work in this case)
if guessed_number.to_i > 10 or guessed_number.to_i < 0
  puts "Your guess is too high or too low. The number must be between 1-10."
elsif guessed_number.to_i == right_number
  puts "You got the right number!"
else
  puts "Sorry, that wasn't the right number. The right number was " + right_number.to_s
end
