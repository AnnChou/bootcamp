#####Basic setup for your app
Once you have completed your first migration, you'll need to do some basic setup for your app. Go back to the activities from the past two days for some hints on how to do these tasks:

1) Set up the routes for your app (config/routes). Once you've done this, remember that you can see them all at http://localhost:3000/rails/info/routes (you can leave this page open while you work to keep track of the routes).
2) Make a dish model (app/models/dish.rb). Don't forget the import of ActiveRecord::Base at the top of the file (look back at the vet app for an example). Be careful with the singular file name for the model (dish)!
3) Set up your controller (app/controllers/dishes_controller.rb) and the index route. Don't forget that you need to import the ApplicationController at the top (see the example in the vet app). Check in your browser to make sure your index route is working at localhost:3000/dishes. You will get a template error if you have it set up correctly.
4) To get rid of that template error, add a view! First, you'll need to add a dishes directory to the app/views folder. Then in the dishes directory, add an index.html.erb file (so /app/views/dishes/index.html.erb). Put some basic HTML in the file, then reload the page at localhost:3000/dishes. You should see what you put in the index file.

Let's add some dish records to the database. We can do this through the Rails console. Go to the command line and put 'rails console' ('rails c' will work too).
Example to create a record: Dish.create(name: 'Mashed Potatoes', type_of_dish: 'side', main_ingredient: 'potatoes', serving_size: 6) --> you will need to substitute the rows that you used in your table (check the db/schema.rb file if you forgot).
To see all of the records, put Dish.all.

Now that we have some records:

5) Set up the index page so that we can see all of the dishes. You will need to get all of the dishes from the database in the controller, save them as an instance variable (@dishes), then loop through them on the index page. Go back to the vet app to see some index page examples.

If you get through all of these activities, great! Go see if any of your colleagues need help.
