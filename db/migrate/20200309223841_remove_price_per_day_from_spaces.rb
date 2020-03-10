class RemovePricePerDayFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :price_per_day
  end
end
