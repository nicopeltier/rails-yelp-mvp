class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    set_restaurant
    # @reviews = @restaurant.review
  end

  def new

    @restaurant = Restaurant.new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end


  def set_restaurant
     @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
