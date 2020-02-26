class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      # t.references :user, foreign_key: true
      # t.string :name
      # t.string :address
      # t.integer :price_per_day

      t.timestamps
    end
  end
end
