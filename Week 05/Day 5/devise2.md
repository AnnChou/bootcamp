#####How to use Devise
Devise takes care of a lot of work for us, but we still need to add it to places in our app! There are two major features that Devise can add: we can require users to be signed in to add information (for instance, for an event or dish) and we can add the user information to the event/dish.

Before we get started with either of these features, let's take a moment to delete any events or dishes that we currently have in our database using the Rails console. Because we are going to change some of the information that we display, it is easier to start with a clean slate. Then we will need to change our dish and event schema to add a column for user_id. That will require a migration and change to the tables:

def change
  add_column :events, :user_id, :integer
  add_column :dishes, :user_id, :integer
end

We're also going to need to add information in our models. Users can have many events and dishes; dishes and events belong to a user.

The next step is to require some pages to have a user signed in before they can be accessed. Devise gives us the tools to take care of this easily. Let's start by going to the dishes controller. If you want to get to the new page or edit page, a user is required to be signed in. Add the following line to the top of the controller:

  before_action :authenticate_user!, only: [:new, :create, :update, :edit]

While we're at the controller, let's add :user_id to the dish_params.

We can also get the user_id easily with Devise when we are saving our record. Under the 'create' function in the controller, add the following line:

  @dish.user_id = current_user.id

That's all we need!

Lastly, it would be nice to see who is bringing what dish. Devise has the email for each user. Let's add a contact email to our app/views/dishes/show.html.erb page (we might want that information on the events show page as well).

BONUS - You can add a name to your user sign-up as well by taking the following steps:

1) You'll need to generate a migration that changes the users table. This is similar to what we did above when we altered the tables to add user_id. Generate the migration, change the users table, then rake db:migrate
2) Go to your config/environments/initializers/devise.rb file and uncomment the line: config.scoped_views = false. Change the setting from 'false' to 'true'.
3) You'll need to change the form by adding a field for the user's name. The form for Devise is found in app/views/users/registrations/new.html.erb (you'll probably want to change edit.html.erb while you're there).
4) You'll need to add the following information to the app/controllers/application_controller.rb file:

before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :name
end
