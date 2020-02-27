class SpacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @spaces = Space.geocoded #returns studio spaces with coordinates

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space }),
      }
    end
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
    redirect_to new
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :city, :content)
  end
end
