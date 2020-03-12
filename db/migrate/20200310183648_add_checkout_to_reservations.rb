class AddCheckoutToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :checkout_session_id, :string
  end
end
