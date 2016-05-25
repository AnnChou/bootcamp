#####Linking models
We've already established the connection between our two models, but let's make sure that it is working correctly. First, double-check that the models have the relationship of belongs_to and has_many. Then, it's a good idea to delete old records out of the database so that the new relationship can be established when you save a new record.

You'll need to decide how you want to tie the two models together. For example, when the user is submitting the form for a dish, should there be a drop-down menu with options for events? We set up a similar scenario in the vet app. You could also set up the button to add a new dish directly on the event page so that the user is directed there automatically. The example potluck app is set up in this way.

Because we have already done the setup, you can already access the dishes and events that are connected. Go back to the vet app to see the example.
