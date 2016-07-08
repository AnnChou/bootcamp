#####Making changes to a table
Sometimes in the course of a project, we need to make changes to a database table. Fortunately, Rails makes it very easy to do this through migrations. Let's say that we forgot to add some information to our event, like giving it a specific name. We'll start by creating a migration so that we can make the change. If you put 'rails generate migration AddColumnToEvents' on the command line, Rails will take care of some of the setup for us.

Now when you go to the file in the db/migrate folder, you'll see a def change method. You'll need to tell Rails some details about how to add a column. The syntax is as follows:

  add_column :[table name], :[new column name], :[new column data type]

In the case where we want to add a name column, it would look like this:

  def change
    add_column :events, :name, :string

There is more general information on the Rails Active Record page about how migrations work, both to create tables and to modify them (http://guides.rubyonrails.org/active_record_migrations.html).

Take another look at your tables in the db/schema file (this would be a great time to ask one of your peers to take a look as well). Do they make sense? Are there any changes that need to be made? If so, generate a migration to make these modifications. Once you're done, 'rake db:migrate' will make the changes.

If you're finished with making changes, let's fill out the events information:

1) Add a show method for events
2) Add a new method for events
3) Make a form partial for events (like we have for dishes)
4) Add a create method for events that saves what is entered through the form

You should be able to access your dishes and events since they are linked together through the database schema (that is the line about adding the index). Using the vet app as your example, can you show all of the dishes for an event on the event's show page? Remember that you can see the database records in the rails console if you want to view the information that is saved (you'll probably want to delete any records you have before trying to tie the dishes and events together, since earlier records will not have the index between these two models).

Also, don't forget to change the parameters that you can pass at the bottom of the controller to make sure that you are saving the dish's event_id. The setup is virtually the same as it was for the relationship between owners and pets, so take another look at that code if you aren't sure where to start.
