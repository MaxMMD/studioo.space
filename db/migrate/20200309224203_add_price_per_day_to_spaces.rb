class AddPricePerDayToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_monetize :spaces, :price_per_day, currency: { present: false }
  end
end
