class ReviewsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @space = Space.find(params[:space_id])
    @review.space = @space
    @review.save
    redirect_to space_path(@space)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
