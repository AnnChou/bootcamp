#####Adding the ability to delete
We have not yet added a delete option, so let's walk through how to do that together. We will also add a popup that should prevent any accidental deletions.

Like create and update, there is no specific page that is dedicated to delete. Often the ability to delete will appear on the edit page (as it does in the Pets model for the vet app). Before we add the the option to delete on the edit page, let's first update the controller to allow records to be deleted.

The method for delete is called 'destroy'. We'll need to find the record using the params[:id] as we do for edit and update function, then we destroy the record. Lastly, we'll redirect to the dishes_path where we will be able to see that the record is no longer there. You can see an example in the Pets controller from the vet app.

Add the following line to the edit.html.erb page:

<%= link_to "Remove Dish", @dish, method: :delete %>

You will now see a link that allows you to delete the dish when you go to the edit page. However, what if you click on the link by mistake? Let's add a popup to make sure that you have a chance to change you mind.

Change the link_to so that it looks like this:

<%= link_to "Remove Dish", @dish, method: :delete, data: {confirm: 'Are you sure?'} %>

You can change the message 'Are you sure?' to whatever you want. The message should appear as a popup when you click on the delete link so that you need to confirm before the record is destroyed.
