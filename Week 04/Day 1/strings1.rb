#You can leave comments in your Ruby code by starting a line with a number sign
#Feel free to make changes to the code to see what happens! You can always pull down a new copy of the original

#strings--lines of text--in Ruby need be enclosed in single or double quotes
#if you use a contraction, you will need double quotes (the example below has 'What's' as an example)
#'puts' will print the string to screen: it means 'put string'

puts "What's your name?"

#here we are saving the input to the question in the variable 'name'
#variables in Ruby are created by simply putting the word you want to use (here 'name'), then making it equal to the value you want

#'gets' takes the input from the command line
#'chomp' gets rid of an automatic new line that Ruby adds with 'gets'. You can try taking out the 'chomp' to see what happens.
name = gets.chomp

#the plus signs add the content of the variable to the string
puts "Hello " + name + ", welcome to learning Ruby!"

#You can run this file from the command line by entering 'ruby strings1.rb'

#EXERCISE
#add another question to ask. Be sure to print it to the screen with 'puts'

#save the response to a variable

#return a string that incorporates the response
