class ShoesController < ApplicationController

  def new
    @shoes = Shoes.new
  end


  def index
    if params[:search].present?
      @shoes = Shoes.search(params[:search]).page(params[:page]).per(10)
    else
      @shoes = Shoes.all.order(:name).page(params[:page]).per(10)
    end
  end

  def show
    @shoes = Shoes.find(params[:id])
  end


end