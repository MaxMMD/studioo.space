class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    # if params[:query].present?
    #   sql_query = "city ILIKE :query OR address ILIKE :query"
    #   @spaces = Space.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @spaces = Space.all
    # end

    @spaces = Space.last(8)
  end
end


