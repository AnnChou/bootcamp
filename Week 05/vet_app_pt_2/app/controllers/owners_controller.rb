class OwnersController < ApplicationController

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    Owner.create(owner_params)
    redirect_to owners_path
  end

  private
#Private params are needed for create and update
#We need to pass in any of the parameters that are being sent to the app through a POST
#This params method ensures that harmful data (data that could affect or change our databases) will not get through. Rails will check that for us.

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :address, :city, :province, :postal_code, :telephone, :email)
  end
end
