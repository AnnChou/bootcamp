#Our game is still kind of lousy because you can only run the program once
#We can add a loop that will help make it better!

#Ruby has several types of loops. Let's start with a while loop

right_number = rand(1..10)

puts "Please guess a number between 1-10"
guessed_number = gets.chomp

#We are builing a while loop that will continue as long as guessed_number is not equal to the right number
#We are resetting guessed_number each time the user inputs information
#'Not equal' is shown with !=

#Be sure to indent each line in the conditional to make your code easier to read
while guessed_number.to_i != right_number do
  #We had to make an adjustment in case of an invalid guess
  #This if statement allows another guess if the first one is invalid
  if guessed_number.to_i > 10 or guessed_number.to_i < 0
    puts "Your guess is too high or too low. The number must be between 1-10. Try again"
    guessed_number = gets.chomp
  else
    puts "Sorry, that wasn't the right number. Try again"
    guessed_number = gets.chomp
  end
  #You need an 'end' statement for loops as well
end

#This line of code will run when the while statement is no longer true
#In this case, that means the person playing the game got the right number (so guessed_number.to_i == right_number)
puts "You got the right number!"
