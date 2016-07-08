#####Show pages, form partial and new/create

Let's keep building our app. Some more features to add:
1) Create 'show' pages for each item in the database. You'll need to add a show method to the controller, get the correct record, and display information on the page (adding a template in the app/views/dishes folder). As usual, go back and look at the previous examples in the vet app if you get stuck.
2) We need to be able to get to the show page! Change the index page so that there is a link for each dish.
3) To help with navigation, let's add a link to the index page that shows up on every page (you can use <%=dishes_path%> as your href). Remember that you make this change in the app/views/layouts/application.html.erb file above the 'yield' tag. There is an example in the vet app that you can check.
4) Let's add a form so that we can create a new dish. We'll need a \_form.html.erb file in the app/views/dishes folder. We'll also need to add a field for each row in the dishes database table. You'll probably find it easiest to copy one of the forms from the vet app and make the necessary changes for this app.
5) Add a method for new in the dishes controller, then render the form in the app/views/dishes/new.html.erb file.
6) For the new record to save, we also need a create method. Don't forget to add the params in a private method at the bottom of the controller! Otherwise your record won't save.

If you get this far, great! See if any of your colleagues need help!
