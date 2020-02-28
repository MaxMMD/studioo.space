class SpacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR address ILIKE :query"
      @spaces = Space.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @spaces = Space.geocoded
    end

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
    @user = current_user
  end

  def create
    @space = Space.new(space_params)
    @user = User.new(params[:user_id])
    @space.user = @user
    @space.save
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :city, :content)
  end
end
