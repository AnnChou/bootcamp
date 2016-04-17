####Routes
Rails apps have a designed number of routes to help keep the urls easy and organize where different information is found. These routes correspond to how the controller and views are organized. For any Rails app, you can see the routes locally by going to http://localhost:3000/rails/info/routes when you are running the server on localhost. Try that now after starting the server for the vet office app.

Routes in Rails correspond to CRUD operations for a database. CRUD stands for Create, Read, Update, and Delete: these are the general actions that you can perform on a database record. Many web apps perform these operations. For example, if you think about Facebook, you can create a post, read others' posts, update your post, and delete it (Twitter is a bit weird in this respect: you can do all of these actions but you can't edit what you've written!). While it is possible to create alternative routes in Rails, generally you want to stick with the pattern. Remember: Rails favors convention over configuration.

You can see all of the pages that allow us to perform CRUD operations in our app by following the pattern shown on the 'routes' page (the URL provided above). You can look at the page by putting localhost:3000/ in front of them. They correspond to the following Rails routes:

  1) Create
      New/create paths (localhost:3000/pets/new). Visit the new page and create a new pet. After you hit the 'Create Pet' button, you will be moved through the create route and back to the index page, where you will see your new pet.
      There is no specific page for create because it is a POST route instead of a GET; it sends the information back to the database. You can see this information on the routes page. We will talk more about the difference between a POST and a GET later.

  2) Read
      Index/show paths: You were redirected to the index page after you created your new pet (localhost:3000/pets). The index provides a list of all the pets in the database. Typically, a Rails app will use the index page as its homepage, although this is not required.

      If you want to see the information for a specific pet, you can click on its name from the index page. You'll notice that the route ends with the id number for the pet (localhost:3000/pets/1 would get you to the first pet in the database). That id number corresponds to the id number in the database. You can check this in the Rails console. If you enter 'Pet.find(id_number)', you'll get the record for the first pet in the database ('.find' works by checking the id). So if you want to see the first pet in the database, you put Pet.find(1). To see all the pets, check 'Pet.all' in the console.

3) Update
     Update allows users to edit/change the object. In the vet app, it's possible to change any of the information about the pet. The route for updating is the 'edit' path, which also requires the individual pet's id number. So if you want to change the information for the first pet in the database, the correct path is localhost:3000/pets/id_number/edit. Edit is the GET page, update is the POST page and sends the update about the record back to the database.

4) Delete
     The last function that our app allows is delete, which is the destroy route. When an object is deleted, it is removed from the database. Delete does not usually have its own page and can be instead found either on the show page (as in this app) or on the edit page.
