class RestaurantsController < ApplicationController
    def index 
        @restaurant = Restaurant.all
    end
    def show
    @restaurant = Restaurant.find(params[:id])
    end
end






private

def find_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
    params.require(:restaurant).permit(:name,:adress,:phone_number,:category)
end