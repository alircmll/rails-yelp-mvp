class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  # def show
  #   @review = Review.find(params[:id])
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  # end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
