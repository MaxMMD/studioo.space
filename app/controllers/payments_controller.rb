class PaymentsController < ApplicationController
  def new
    @reservation = current_user.reservations.where(status: 'pending').find(params[:reservation_id])
  end
end
