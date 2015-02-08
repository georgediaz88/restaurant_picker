class Api::RestaurantsController < ApiController
  respond_to :json

  def index
    respond_with :api, Restaurant.all
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    respond_with :api, restaurant
  end

  def destroy
    respond_with Restaurant.destroy(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
