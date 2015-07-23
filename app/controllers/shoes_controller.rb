class ShoesController < ApplicationController

  def new
    @shoes = Shoe.new
  end


  def index
    if params[:search].present?
      @shoes = Shoe.search(params[:search]).page(params[:page]).per(15)
    else
      @shoes = Shoe.all.order(:name).page(params[:page]).per(15)
    end
  end

  def show
    @shoe = Shoe.find(params[:id])
    @shoe_stores = @shoe.shoe_stores
    # binding.pry
    @reviews = @shoe.reviews.order(created_at: :desc).page params[:page]
  end


 def edit
    @shoes = Shoe.find(params[:id])
  end

  def update
    @shoes = Shoe.find(params[:id])

    if @shoes.update(shoes_params)
      redirect_to shoes_path(@shoes.id)
      flash[:notice] = "#{@shoes.name} updated"
    else
      render :edit
    end
  end

    def destroy
    @shoes = Shoe.find(params[:id])
    if @shoes.destroy
      flash[:notice] = "Shoes Deleted"
    end

    redirect_to root_path
  end

  protected

  def shoes_params
    params.require(:shoe).permit(:name, :price, :color, :brand, :image, :description, :feature)
  end
  
end