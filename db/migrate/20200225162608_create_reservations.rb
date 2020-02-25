class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true
      t.integer :price_per_day
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
