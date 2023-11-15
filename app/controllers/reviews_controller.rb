class ReviewsController < ApplicationController
  before_action :set_restaurant
  def index
    @reviews = @restaurant.reviews
  end

  def new
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private
def review_params
  params.require(:review).permit(:content, :rating)
end
end
