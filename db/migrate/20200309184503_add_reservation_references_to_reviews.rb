class AddReservationReferencesToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :reservation, foreign_key: true
  end
end
