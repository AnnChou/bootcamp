####Adding a model

Our app currently works fine as long as all you want to do is keep track of pets at our vet practice. But likely we will need to add some functionality. There could be many new pieces of functionality that we add, such as pet medication or vet appointments. But let's start with adding an Owner model and linking that to our pets.

Normally, if we were building an app from scratch, we would want to take a moment and think about how our models are related, along with the information we need about them. We can do that quickly here. We already have our Pet model, but we will want to add a column to our database so that we can link a pet to the owner. We will also need an Owner model, and now is a great time to think about what information we want in our database about the owners.

At a minimum, we will probably want to know the following:
Owner: first name, last name, address, city, province, postal code, telephone, email

Our Pet model can mostly stay the same with one change:
Pet: name, species, breed, owner
We will tie the owner to the pet by the id in the database. Rails gives us an easy way to do this, but we will need to make our database change first.

Because we will be changing our information, now is a great time to do into the Rails console and clean out the records that are currently in there. Otherwise, we might run into problems with some records that lack information. Go into Rails console and type 'Pet.delete_all' to get rid of all of our current records. You can confirm that this worked by going to the index page again.

Next, we will need to add a database migration to create our owner model. We will be able to link the two models together in the /app/models folder without making any more database changes.

####Generating a database migration
In Rails, we use migrations to make changes to the database. There are several good reasons for the system; for example, if we make a change to the database that causes problems, Rails will keep a record of what we did. Also, we can track our amendments while we are working on our app. Typically, you will need to make database changes over the course of building a fully functional app, so it's nice to have a record of them. Migrations are tracked in the /db/migrate folder. If you go there now, you can see a record of the migration that added the 'pets' table to the database.

Let's do the same thing and add an 'owners' table.

1) With your app running in a different terminal window, go to your terminal and type 'rails generate migration createOwners'. You can see that this one command generated a migration and put the basic information that we will need to create our new table.

2) Add in the information that we want for the owners (listed above). You will want to add it with the following format: 't.text :first_name', 't.text :last_name' etc... You can take a look at the previous migration for the pets table if you want to see some examples.

3) Once you have added all of the columns that you want for the owners, then you will need to finish the migration. Type 'rake db:migrate' into the command line and you will have your new database table.

4) If you want to see your whole database setup, you can look in the file db/schema. You should now see your owners table there with all of its information.

5) Now we need to tie the two models together. In this app, every pet needs an owner. Owners can have multiple pets. So we say that pets belong to owners and owners have many pets (they don't need to 'have many', but they are permitted to in terms of our database records). We will tell Rails about this relationship in our models files. Go into /app/models/pet.rb and add the following line: 'belongs_to :owner'. Then, make an Owner.rb model in the same directory. You'll need to copy the same line as is in the Pet.rb file, except change the class in the first line to Owner. Then, add the line 'has_many :pets'. Now our two models are linked to each other!
