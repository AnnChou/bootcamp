#####Starting a Rails app
We have now had experience with all of the different parts of a Rails app (models, views and controllers). But we have not yet started a Rails app from scratch. For the next few days, we are going to build an app that helps organize potlucks: we will have users who attend events and who bring dishes to the events. Our app helps ensure that there is a good balance of different dishes at each event.

Unlike the vet app, there will be more flexibility this time around. If you want to incorporate different ideas into your app, go ahead and build it as you want (however, please stay with the general outline so that we are progressing at the same time. You will be free to make your own app next week!).

First, navigate to the folder where you want your app to be. When you generate the app, it will be created in that folder.

Type 'rails new potluck' on the command line. This will generate a bunch of files and take a minute to run. You can open the entire app in Atom (or whichever text editor you choose to use) by typing 'atom potluck' from the command line (that way you'll be able to see all of the files at once). You should 'cd' into the potluck folder once you have opened the files in Atom.

This is a great opportunity to put your app on Github:
  1) Once you are in the potluck folder, type 'git init'. That will initialize a Git repository in this folder.
  2) Type 'git status' and 'git add -A'. This will make all of your files ready to stage. You're ready to 'git commit' now (example: git commit -m 'Initial commit').
  3) Let's add this repo to our Github account. Log in to your account and click on the 'New Repository' button. Name the repository whatever you want (maybe 'potluck').
  4) Follow the instructions under '…or push an existing repository from the command line' to add your repo. You should be all set! You can now push changes up to Github so that anyone can see them.

You'll want to have at least two terminal sessions running: one with a command line, and another running your Rails server. Type 'rails server' (or you can just put 'rails s') in one of them, then go to localhost:3000 in your browser. You should see the 'Welcome aboard' Rails page.

Next we will need to generate a migration for our 'dish' model (we are going to start building this one out). Think about the attributes that you will want this model to have. For example, you will want to know the name of the dish, what type of dish it is (appetizer, main, side, dessert), main ingredient, whether it is vegetarian/vegan or any other attribute that you want.

IMPORTANT: don't use the word 'type' alone as one of the rows. It is a reserved word, meaning that Rails uses it as part of the language (other examples: http://www.rubyplus.net/2011/07/reserved-words-in-rails.html). Using reserved words can lead to problems later on when you need to access this attribute. You can change 'type' to type_of_dish (or something similar) and that will be fine.

Type 'rails generate migration CreateDish' on the command line. This will create a file in db/migrate. You'll need to add your migration here (the create_table command is generated automatically by Rails for you when you put 'Create' in your migration command). Take a look at some of the migrations from our vet app to see what you need to create your table. Remember that the 't.' is part of the 'do' loop that is creating the columns for your table. Right now, it probably makes sense to have all of the columns as text (as we did for the vet app). So a column for the type of dish would require an entry such as 't.text :type_of_dish'. Go ahead and add any additional columns that you think would be helpful.

For the last line, add 't.timestamp null: false'. This information will tell you when a new record was entered into the database; it is generally helpful to have a timestamps column for any information that you want to keep track of in terms of time. For example, you may want to only allow one chicken dish at your event, so you might want to know which chicken dish was submitted first.

Once you have finished adding this information, go back to the command line and type 'rake db:migrate'. This will create your database table. If you go to the db/schema.rb file, you can see what your database table currently looks like.

It might seem a bit weird that Rails knows to make 'dish' into 'dishes' for the plural. Rails is smart enough to make some changes from singular to plural automatically. However, there are some strange 'gotchas' with this practice. In general, you can assume that Rails will adapt to words that have unusual plural endings (such as -es in the case of dishes). For more information, see this article: https://davidcel.is/posts/the-current-state-of-rails-inflections/

Once you've finished setting up your first table, take a short break before we move on to setting up more parts of the app.
