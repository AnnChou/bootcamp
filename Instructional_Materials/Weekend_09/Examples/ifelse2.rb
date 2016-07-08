#But what if someone puts an answer other than "Yes" or "No" when we ask about Ruby?
#We need to add more to our if/else statement in this case

puts "Have you studied Ruby before?"
response = gets.chomp

if response == "Yes"
  puts "Great, you'll be building Rails apps in no time!"
#elsif runs if the first statement is false and the elsif statement is true
#You can add as many elsif statements as you want
#Remember that you need double equal signs to check equality
elsif response == "No"
  puts "No problem, you'll pick it up fast!"
else
  puts "Please enter 'Yes' or 'No' as your response"
end

#There is one problem with this program: what if the person enters 'yes' or 'no' (lowercase)? Try it out and see what happens
#Ruby has methods that allow you to change strings. In this case, we want 'capitalize'
#Try out 'capitalize' in irb. Assign a string to a variable, then use the method on the variable.
#For example, if you call your variable new_string, you would call new_string.capitalize
#Try adding a line to this program that ensures that response is capitalized when you test for equality

#EXERCISE
#Try putting together the first string program that you wrote with this one
#Add another if/else statement
