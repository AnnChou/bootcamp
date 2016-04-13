#This is the file where we define the routes for our application
#You can see them all listed at http://localhost:3000/routes once you have started your server
#This app has two resources: pets and owners. We could be more specific about which routes each resource should have, but we're fine to have them all.

Rails.application.routes.draw do
  #Setting a root is optional. The root is like a home page.
  #If we go to localhost:3000, it will take us to the index page because we have set the root

  root 'pets#index'
  resources :pets, :owners
end
