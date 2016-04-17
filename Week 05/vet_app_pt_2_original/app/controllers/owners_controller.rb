class OwnersController < ApplicationController

  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
    @pets = Pet.where(owner_id: @owner.id)
  end

  def new
    @owner = Owner.new
  end

  def create
    Owner.create(owner_params)
    redirect_to root_path
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update_attributes(owner_params)
    redirect_to owners_path
  end

  private
  def owner_params
    params.require(:owner).permit(:name, :address, :city, :state, :postal_code, :phone, :email)
  end
end
