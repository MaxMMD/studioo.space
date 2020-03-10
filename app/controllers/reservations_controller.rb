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
    @reservation.status = 'pending'
    @reservation.save!

    # CREAR OBJETO DE STRIPE *SESSION
    session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: @reservation.title,
      amount: @reservation.total_price_cents,
      currency: 'usd',
      quantity: 1
    }],
    # CREAR URLS PARA SUCCESS Y CANCEL
    success_url: reservation_url(@reservation),
    cancel_url: "http://cancel_url"
    )

    @reservation.update!(checkout_session_id: session.id)

    redirect_to new_reservation_payment_path(@reservation)
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
