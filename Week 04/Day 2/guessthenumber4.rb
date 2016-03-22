#Our guess the number game is pretty good now! But let's make some more improvements
#First of all, let's expand the number so that it's between 1-100

right_number = rand(1..100)

#Let's not forget to change our initial statement!
puts "Please guess a number between 1-100"
guessed_number = gets.chomp

#We should make some changes to our conditions! Otherwise we might have to guess 100 numbers
#Let's add in some feedback for the guesses to show whether they are high or low
while guessed_number.to_i != right_number do
  if guessed_number.to_i > 100 or guessed_number.to_i < 0
    puts "Your guess is too high or too low. The number must be between 1-10. Try again"
    guessed_number = gets.chomp
  elsif guessed_number.to_i > right_number
    puts "Your guess is too high. Try again"
    guessed_number = gets.chomp
  elsif guessed_number.to_i < right_number
    puts "Your guess is too low. Try again"
    guessed_number = gets.chomp
  end
end

puts "You got the right number!"
