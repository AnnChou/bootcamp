#####Adding routes

We have added our new Owner model, but it is not yet appearing in our routes (go to http://localhost:3000/rails/info/routes to verify this). We need to tell Rails to add this model to its routes. Go into the /config/routes.rb file to do this. Let's take a moment to look at this file, as it is an important one when we are setting up our app.

The "root 'pets#index'" is not a mandatory one, but it makes routing our app a lot easier. Our app knows that the homepage is the index page, so if we go to localhost:3000, we are taken there automatically. We can also use 'root_path' as a route in our app, as we will see. If you go back and look at some of the /views/pets pages that we already have, you will see that it is used there (also in our layouts/application.html.rb page as part of the link that appears on the top of each page).

We already have our resource for the pets set up, so now we have to add owners. This is easy enough, just add :owners to the line! So it should look like this:
  resources :pets, :owners
Now we should be all set. Go back to the 'routes' page to make sure that worked.

Okay, we have our routes, but if we try to go to any of them, we will get a Rails error that says 'uninterrupted constant OwnersController'. You can see this if you go to localhost:3000/owners (the index page). This error is letting us know that the Rails server doesn't know where to go when we try to visit one of the owner routes. So first, we should add a controller file for owners.

#####Adding a controller

Our controller needs to go in the /app/controllers folder, in the same place as the Pets controller. Let's add one there so that Rails gets rid of that error message. Be sure to make the file name plural and in the same format as the pets controller (owners_controller.rb). This may seem picky, but Rails is looking for a specific pattern in order to make the app work.

Once you have added the owners controller, refresh the page and see which error you get. It should be an error that states Rails is 'unable to autoload constant OwnersController'. What this means is that Rails can find the controller, but it doesn't know what to do with this route! We need to define it in the controller file so that our app knows where to go.

Go back and take a look at what we have in the pets controller for the index. It's the method for index. The owner controller needs two pieces of information to make the index page work. First, you need to import the OwnersController class; copy the very top line of the PetsController, then add it to the file, changing the name to OwnersController.
Next, you need to tell the controller what to do for the index page. If you add:
  def index
  end
You will no longer get the error that you ran into before (you'll need one more end to close the OwnersController class). Now we have a new error :)
