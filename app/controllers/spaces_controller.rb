#require 'pry'
class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR address ILIKE :query"
      @spaces = Space.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @spaces = Space.geocoded
    end

    @markers = @spaces.map do |space|
      {
        id: space.id,
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space }),
      }
    end
  end

  def show
    @spaces = Space.first(3)
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
    tags = params["space"]["tag_ids"]
    tags.each do |tag|
      if tag != ""
        tag_instance = Tag.find(tag.to_i)
        SpaceTag.create(space: @space, tag: tag_instance)
      end
    end
    if @space.save
      redirect_to spaces_path
    else
      render :new
    end
  end

  def own_spaces
    @spaces = Space.where(user: current_user)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :city, :content, :photo)
  end
end
