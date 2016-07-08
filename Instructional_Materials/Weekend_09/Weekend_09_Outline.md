# Weekend 9
*Please note that this outline may change, evolve or adjust over time.*

## Saturday
This is an **instruction-heavy** day.

### Goals
1. Get students familiar with Ruby
2. Introduce strings and string substitution
3. Review if/else statements


### Schedule
#### 10:00-10:30, Stand-up session
As we shift into Ruby and Rails, provide outline of what to expect to come up as frustrations and issues that differs from working with our prior languages.


#### 10:30-11:30, Ruby
##### Talk: Introduction to Ruby
Working through the example file of [strings1.rb](strings1.rb) with the students, introduce the concepts of strings, running files from the command line.


#### 11:30-12:00, Ruby
##### Activity: Make your own interaction.
Students develop their own simple interactive script using strings1.rb as a model.


#### 12:00-13:00, Lunch

#### 13:00-14:00, Debugging Ruby
##### Talk: Debugging tools
Working through the example file of [debugging.rb](debugging.rb), students get introduced to installing Ruby gems (specifically pry and irb) and how to use them to help identify and resolve problems in their Ruby code.


#### 14:00-14:30, If/Else
##### Talk: If/else statements
Working through the example file of [ifelse1.rb](ifelse1.rb), students should get an introduction to the basics of using if and else to create conditional statements.


#### 14:30-15:00, Bio-break

#### 15:00-16:00, If/Else (continued)
##### Talk: Elseif
Working through the example file of [ifelse2.rb](ifelse2.rb), students get more practice with if and else, and are introduced to working with elseif.

#### 16:00-17:30, Ruby
##### Activity: Expand on interaction.
Working from their earlier customized interactive script, students are to expand on interactive script by adding in if/else statements.


#### 17:30-18:00, Talk & Debrief
##### Talk: Ruby resources 
Introduce online Ruby-specific resources - such as http://ruby-doc.org/ - in addition to the course-share for links and resources.

##### Debrief
Give the students some time to pose any remaining questions regarding any Ruby materials from the day.




## Sunday
This is an **lecture-heavy** day.

### Goals
1. Create a 'Guess the Number' game that is run through the command line
2. Introduce 'while' and 'do' loops
3. Introduce arrays and methods
4. Introduce refactoring code
5. Review if/else/elsif

### Schedule
#### 10:00-11:00, Ruby Pseudo-code
##### Activity: Guess the number game
Collaboratively, come up with a listing of the functionality required (psuedo-code) of a 'guess the number between 1-10' game with the students - think about requirements such as what if someone guess too high, or too low? 

Once a reasonable structure has been proposed, introduce students to how one generates a random number using [guessthenumber1.rb](guessthenumber1.rb) and [guessthenumber2.rb](guessthenumber2.rb) as reference. Allow the students enough time to build out the basics of the game.


#### 11:00-12:00, Ruby Loops
##### Talk: While loops make life easier
Working through the example file of [guessthenumber3.rb](guessthenumber3.rb) show students how we can use loops (in this case a while loop) to make the game better.

#### 12:00-13:00, Lunch


#### 13:00-14:30, Ruby Improvements
##### Activity: Better guess the number game
Students are to work through making the guess the number game now work between 1-100. Also, they are to add more if/else to narrow down the choices rather than only guess. Use [guessthenumber4.rb](guessthenumber4.rb) as reference for a completed version of the game.

#### 14:30-15:00, Bio-break


#### 15:00-16:00, Ruby Arrays
##### Talk: Storing previous guesses
Working through the example file of [guessthenumber4.rb](guessthenumber4.rb) show students how we can use arrays to store the prior guesses and then have the user each/do loop.


#### 16:00-17:30, Refactoring
##### Talk: Code refactoring
Working through the example file of [guessthenumberfinal.rb](guessthenumberfinal.rb) show students how we can work through cleaning up or 'refactoring' code to make it more efficient; removing repeated elements in favour for methods which we can then call on.


#### 17:30-18:00, Debrief
Give the students some time to pose any remaining questions regarding any Ruby materials from the day.



