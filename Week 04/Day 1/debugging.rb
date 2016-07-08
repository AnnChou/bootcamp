#Debugging tools

#One of the best debugging tools that you can use in Ruby is called irb (Interactive Ruby)
#You can access it from the command line by entering 'irb'
#You can try out commands in Ruby to see if they work in irb. It's a handy tool
#Go in to irb and try some of the commands we learned last time, such as 'puts'
#You can also do math using Ruby in irb. Try some equations
#When you are done with irb, you can leave by typing 'exit'

#Another tool for debugging in Ruby is called pry. Pry is a Ruby gem. Gems allow you to expand Ruby's capabilities.
#Ruby gems are installed automatically in versions of Ruby higher than 1.8.
#Run the command 'ruby -v' in your terminal to see which version of Ruby you are running
#After that, you'll need to install pry: enter 'gem install pry' in the terminal

#to add a gem to your program, you need to require it
require 'pry'

#There is a small bug in this program, you might pick it out right away
#But we are going to use pry to see if we can find it

puts "What is your name?"
names = gets.chomp
#This command will pause the program in the command line. Check what is in the variable 'name' and 'names'
binding.pry
#When you are done with pry, enter '!!!' to stop it on the line with the binding.pry
#You can continue running the program if you type 'exit' instead. That will show you the error.
puts "Hello " + name + ", welcome to Ruby!"
#Be sure to look at the error message to help fix the problem!
#Error messages are extremely helpful in Ruby and Rails, so it's good to pay close attention to them!
