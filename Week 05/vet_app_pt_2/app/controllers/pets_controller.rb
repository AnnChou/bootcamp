class PetsController < ApplicationController

  #listing of all the pets that are part of the vet clinic
  #pets_index, localhost:3000/pets
  #views/pets/index.html.erb
  def index
    @pets = Pet.order(:name)
  end

  #listing of information for an individual pet
  #the controller finds the correct pet in the database by looking up the id
  #pet_path, localhost:3000/pets/[id=id number of individual pet]
  #so to see inforamtion about the first pet in the database, the url woudl be localhost:3000/pets/1
  #views/pets/show.html.erb
  def show
    @pet = Pet.find(params[:id])
  end

  #presents form to create a new pet at the clinic
  #new_pet, localhost:3000/pets/new
  def new
    @pet = Pet.new
  end

  #this route creates the new pet after submitting the form
  #we can't really access it as a page, as we don't need to see a page during this POST
  #create is tied to new. So it is the route that kicks in after the 'New pet' button is activated.
  def create
    Pet.create(pet_params)
    redirect_to pets_path
  end

  #allows us to edit the information about a pet
  #edit_pet_path, localhost:3000/pets/[id = id number of individual pet]
  def edit
    @pet = Pet.find(params[:id])
  end

  #update is linked to edit in the same way that create is linked to new (there is no page for update)
  #update is a POST request that updates the inforamtion in the database
  def update
    @pet = Pet.find(params[:id])
    @pet.update_attributes(pet_params)
    redirect_to pets_path
  end

  #destroy allows us to delete records as needed
  #it works like create and update: there is no separate views page for delete
  #for this app, you can destroy the record from the page for the record. So it's an option on the pet/[id] page
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private
#Private params are needed for create and update
#We need to pass in any of the parameters that are being sent to the app through a POST
#This params method ensures that harmful data (data that could affect or change our databases) will not get through. Rails will check that for us.

  def pet_params
    params.require(:pet).permit(:name, :species, :breed, :owner_id)
  end
end
