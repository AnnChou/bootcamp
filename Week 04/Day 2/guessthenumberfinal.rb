#Our guess the number game works now! But the code got pretty ugly along the way
#We want to try to avoid repeating code as much as we can. So we are going to refactor our game
#Instead of repeating the array of guesses code, we will move that to a method which we will then call

#This is our method, extracting the repeated code
#We are passing in the list_of_guesses array. Methods can have parameters passed in, but it is not mandatory
def show_guesses(list_of_guesses)
  puts "Do you want to see your guesses? y/n"
  see_guess = gets.chomp
  if see_guess == 'y'
    list_of_guesses.each do |guess|
      puts guess
    end
  end
  puts "Try another guess"
end

right_number = rand(1..100)

puts "Please guess a number between 1-100"
guessed_number = gets.chomp

list_of_guesses = []

while guessed_number.to_i != right_number do
  if guessed_number.to_i > 100 or guessed_number.to_i < 0
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too high or too low. The number must be between 1-10. Try again"
    guessed_number = gets.chomp
  elsif guessed_number.to_i > right_number
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too high."
    #We are calling the method here and passing in our list_of_guesses
    show_guesses(list_of_guesses)
    guessed_number = gets.chomp
  elsif guessed_number.to_i < right_number
    list_of_guesses.push(guessed_number.to_i)
    puts "Your guess is too low."
    #Same method gets called here with the list_of_guesses passed in
    show_guesses(list_of_guesses)
    guessed_number = gets.chomp
  end
end

puts "You got the right number!"
