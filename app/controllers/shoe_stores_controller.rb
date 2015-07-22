class ShoeStoresController < ApplicationController
  
  def new   
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

  def shoes_params
    params.require(:shoestore).permit(:shoe_id, :store_id,:url)
  end
end