#####Validations
Validations are very important in any web application. The information that you get from your users needs to be accurate so that your app can work as effectively as possible. One of the important ways of ensuring that your information is accurate is by adding validations to your data when your users fill out the form. Fortunately, Rails makes it very easy to add validations to your models.

Let's start with some easy validations. First, let's make sure that we have necessary information. For a dish, we need to have information about its name. So let's add the following validation to the model:

  validates :name, presence: true

Now if you try to save a dish without a name, it won't save. You can see this if you look in your command line terminal that is running the Rails server. Instead of saving the record, you'll see that it rolled the record back, which means it stopped the database transaction without saving.

It's great that we can be more precise about the data that we're getting from users, but it would be even better if we could let our users know when they filled out the form incorrectly.

We can add a notice to the form partial for dishes by including this code:

<%= form_for @dish do |f| %>

<% if @dish.errors.any? %>
  <h2><%= pluralize(@dish.errors.count, "error")%>
  prohibited this dish from being saved</h2>

  <ul>
    <% @dish.errors.full_messages.each do |msg| %>
    <li><%= msg %></li>
    <% end %>
  </ul>
<% end %>

  <div class="form">
    <%= f.label :name %>
    <%= f.text_field :name %>
  </div>

Now if there is a problem with the dish, we can let the user know. But we'll need to add a bit more information to the controller so that the right action will happen if there is a problem with the form (most likely, we will want to allow the user to fill it out again).

def create
  @dish = Dish.new(dish_params)
  if @dish.save
    redirect_to event_path(@dish.event_id), :notice => "Dish added to the event"
  else
    render :new
  end
end

We are first going make a new dish, then try to save it. If the save doesn't work, we will show the form again and the error will appear at the top of the page (that was the code we put in the form partial). If the dish does save, we'll go back to the event and see it there. We can also put a message for the user so that it is clear that the dish saved.

If you try this out, though, you might notice that the success notice did not show. We need to add one more line of code to do this. In the app/views/layouts/application.html.erb file, add the following above the <% yield %> line:

<% if notice %>
  <p class="alert alert-success"><%= notice %></p>
<% end %>

Give it another try, with the right information in the form and the wrong information. You should get an error message or a confirmation if the dish saved.

Some of the other types of validations you can add include a minimum/maximum length. You can also combine validations. Maybe we have decided that the name of a dish needs at least two characters, for instance:

  validates_length_of :name, :minimum => 2

You can find out more about the types of validations available through Rails in the official documentation (http://guides.rubyonrails.org/active_record_validations.html)
