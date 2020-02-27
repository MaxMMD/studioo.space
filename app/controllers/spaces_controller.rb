class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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
    if @space.save
      redirect_to new
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :city, :photo)
  end
end
