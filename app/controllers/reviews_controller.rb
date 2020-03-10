class ReviewsController < ApplicationController
  def index

  end

  def new
    @review = Review.new
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    @review = Review.new(review_params)
    @reservation = Reservation.find(params[:reservation_id])
    @review.reservation = @reservation
    puts params
    if @review.save
      redirect_to space_path(@reservation.space)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :ratings)
  end
end
