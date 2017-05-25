class ReviewsController < ApplicationController


  def new
    set_restaurant
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    redirect_to restaurant_path(@review.restaurant)
  end

  def set_restaurant
     @restaurant = Restaurant.find(params[:restaurant_id])
  end

private

  def review_params
    params.require(:review).permit(:content, :restaurant_id, :rating)
  end

end
