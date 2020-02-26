class SpacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.save
    redirect_to space_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :city)
  end
end
