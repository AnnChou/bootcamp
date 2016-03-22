#rand selects a random number between the values in the brackets (in this case, 1-10)
right_number = rand(1..10)

puts "Please guess a number between 1-10"
guessed_number = gets.chomp

#The value returned by gets.chomp is a string. We need it to be an integer so that we can compare it to right_number
#In this case, we change guessed_number to an interger by adding .to_i
if guessed_number.to_i == right_number
  puts "You got the right number!"
else

#By changing the integer right_number to a string (.to_s), we can interpolate it
  puts "Sorry, that wasn't the right number. The right number was " + right_number.to_s
end
