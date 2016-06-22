#####Adding Devise
We are going to add one more gem to our app that allows users to register, sign in and so that you can track who is creating events/dishes. That gem is called Devise. We could write a model for this, but Devise will take care of ensuring that there are no security issues. The documentation is here: https://github.com/plataformatec/devise. You can also find several tutorials online if you get stuck during installation.

Here are the steps for setting up Devise:

1) Add the gem to your Gemfile:
  gem 'devise'
  Then be sure to run 'bundle install' so that this new gem is recognized by your app.
2) Allow Devise to initiate the installation in your app by running the following in your terminal:
  rails generate devise:install
3) Read through the installation instructions that are generated after you run Step 2. You don't need to worry about the Heroku information, but make sure the rest of it is set up correctly. You'll also want to restart your server to make sure everything is installed properly.
4) We are going to make a User model (we could call the model whatever we wanted, such as Member or Potlucker, but we'll stick with User). Run this line in your terminal:
  rails generate devise User
5) You'll need to run a migration after this because you added a new model:
  rake db:migrate
6) We'll let Devise do the hard work of creating the views for us:
  rails generate devise:views users

You now have everything you need to create users, save them, and ensure that their information is stored safely. First, let's change the app/views/layouts/application.html.erb file so that there is a sign-in/log-out option on every page. Put the following code above the <% yield %> tag in that file:

<%- if current_user -%>
         <li class="nav"><%= link_to 'Sign Out', destroy_user_session_path, method: :delete %></li>
       <%- else -%>
         <li class="nav"><%= link_to 'Sign Up', new_user_registration_path %> | <%= link_to 'Sign In', new_user_session_path %></li>
       <%- end -%>

Now refresh any page in the app and you should be able to see the sign-in option. Go ahead and create a fake user! We'll start restricting what users can do in our app during our next session.
