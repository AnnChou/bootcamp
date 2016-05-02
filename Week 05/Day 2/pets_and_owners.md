#####Adding owners to pets
We still have some work to do on our app, such as adding edit/update to the owners controller, but one of the most pressing concerns is that we need to add owners to our pets. So we will take care of this next. We have already established that the two models are related. Every pet has an owner, and an owner can have many pets. We set this up in our models files so that Rails knows about this relationship.

As a result, we can access pet owners through their ids. We'll need to make some changes so that we can add this information. Let's start by making a migration so that there is a database connection established between the models.

Our migration will be a change. Start by going to the command line and putting 'rails generate migration ChangePetsTable'. This should generate a new file in your db/migrate folder. The change that we'll want to make is 'add_reference :pets, :owner, index: true', which should go in the line after def change (Rails will automatically make this line in your migrate file). The whole file should look like this:

class ChangeOwnersTable < ActiveRecord::Migration
  def change
    add_reference :pets, :owner, index: true
  end
end

Once you've saved that file, run 'rake db:migrate' from the command line to make the change.
Now we can link pets and owners together.

We are going to add a line to our pets form partial that allows us to choose from the owners that we have in our database already. This line ties a pet to an owner id and records this information in the database. Here's the code we need to do this:

<div>
  <%= f.label :owner %>
  <%= f.select :owner_id, options_from_collection_for_select(Owner.all, 'id', 'last_name') %>
</div>

Before we forget, let's change the pet_params in the pets controller so that we can pass the :owner_id information.

There's a small problem with this solution: we can only see the owner's last name. To get first and last names, let's add a method to our owner model call full_name. You'll want to add this just below the has_many :pets in the app/model/owner.rb file:

def full_name
  "#{first_name} #{last_name}"
end

Now we need to make an adjustment in our pets form partial. Instead of calling the 'last_name', we now want to use 'full_name' instead. There we go!

We can also now see the owner's name when we visit the pet's page. If you don't already have some owners, add a few now. Also, add in a few pets. We can pretty easily access the information through the pet since the models are linked. We're going to add a line to the views/pets/show.html.erb that shows the owner on the page. You can add this to the bottom of the list that we already have:

<ul class="pet_info">Owner: <%= @pet.owner.full_name %></ul>

Now click the page to see that this information is added. We are using the full_name method again here so that we can see the first and last names together.
