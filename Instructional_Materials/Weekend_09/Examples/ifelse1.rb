#Logic is a big part of writing computer code
#We are going to explore if/else in Ruby

puts "Have you studied Ruby before?"
response = gets.chomp

#If this statement is true, then the next line of code will run
#You need two equal signs here because you are checking for equality
#If you put only one equal sign, then you are making the variable 'response' equal to 'Yes'. So this statement will always be true
if response == 'Yes'
  #Conventionally you will want to indent the line after a conditional statement to make your code easier to read
  puts "Great, you'll be building Rails apps in no time!"
#If the 'if' clause is false, this statement will run
else
  puts "No problem, you'll pick it up fast!"
#In Ruby, you need to end if/else statements with 'end'
end
