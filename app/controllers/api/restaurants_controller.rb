class Api::RestaurantsController < ApiController
  respond_to :json

  def index
    respond_with :api, Restaurant.all
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    respond_with :api, restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end