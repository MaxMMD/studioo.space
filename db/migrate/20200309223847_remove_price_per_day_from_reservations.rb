class RemovePricePerDayFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :price_per_day
  end
end
