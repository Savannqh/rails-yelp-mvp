class ReviewController < ApplicationController
    def new
        # we need @restaurant in our `simple_form_for`
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new
      end
    end
end
