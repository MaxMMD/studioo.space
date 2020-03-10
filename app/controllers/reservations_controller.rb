class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id]) # In order to create a new reservation instance, we NEED the space ID

    @reservation.price_per_day = @space.price_per_day
  end

  def create # to create a reservation we need both the space and the user
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id]) # We also need the space ID, same as the new method

    @reservation.space = @space  #assigned the space
    @reservation.user = current_user #assigned the user (current user)
    @reservation.price_per_day = @space.price_per_day

    if @reservation.save
      NotificationChannel.broadcast_to(@space.user, "Hey somebody booked #{@space.name}!")
      redirect_to reservation_path(@reservation)
    else
      raise
    end
  end

  def own_reservations
    @reservations = Reservation.where(user: current_user)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_on, :end_on)
  end
end


# Create a reservation show view and action
#
