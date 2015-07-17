class ReviewsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]

  def new
    @shoes = Shoe.find(params[:shoe_id])
    @review = Review.new
  end

  def create
    @shoes = Shoe.find(params[:shoe_id])
    @review = @shoes.reviews.new(review_params)
    @review.user = current_user
    # binding.pry
    if @review.save
      redirect_to shoes_path(@shoes)
      flash[:notice] = "Review added"
      # if @shoes.user
      #   UserMailer.review_email(@review).deliver_now
      # end
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    @shoes = @review.shoes
    binding.pry
  end

  def update
    @review = Review.find(params[:id])
    @shoes = @review.shoes

    if @review.update(review_params)
      redirect_to shoes_path(@shoes)
      flash[:notice] = "Review updated"
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @shoes = @review.shoe

    if @review.destroy
      # UserMailer.review_delete(@review).deliver_now
      flash[:notice] = "Review obliterated!"
    end

    redirect_to shoe_path(@shoes)
  end

  protected

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end