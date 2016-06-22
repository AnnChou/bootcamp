#####Adding an Events model
It's time to add our second model, which will be for events. For each event, people can sign up to bring various dishes for the potluck. In terms of our model, an event will have many dishes and a dish will belong to a specific event. We will need to generate a migration to create our Event model and then tie our Dish model to it. Start by generating a migration called CreateEvents, then go to the db/migrate folder to find your migration.

You can feel free to add the information that you think is most important for events (probably the date will be at least one of them). Once you have added your columns to the migration, you will need to add one more line:

    add_reference :dishes, :event, index: true

Adding this reference will tie our tables/models together. This is also a good time to go into your Rails console and delete the records you made before; that way you can make sure that the examples you are using for building the app will be accurate.

Next, you'll need to add an Event.rb model. Then add the has_many/belongs_to connection for the Event and Dish model (see the example in the vet app). We're going to add one more bit of information to the model so that any related dishes will be deleted if we delete an event:

  has_many :dishes, dependent: :destroy

Now that we have an Events model, let's add the events routes. Verify that they are now part of the app at http://localhost:3000/rails/info/routes. Also, it probably makes sense to set the root page of the app for the Events index page. You can set this up following the instructions in the routes.rb file, or look back at the vet app for an example. We will probably want to change the link to 'Home' that we set up in the layouts/application.html.erb file so that it reflects the new root path.

If you try to visit the root page of the app now (localhost:3000), you'll get an error message about the controller. Let's take care of that and add the steps to show a page for the events index before moving on to the next stage (it doesn't need to be fancy, but you'll need to make an events directory in the app/views folder, then an index.html.erb file. The setup should be the same as the app/views/dishes).
