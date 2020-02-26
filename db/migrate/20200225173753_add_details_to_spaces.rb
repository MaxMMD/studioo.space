class AddDetailsToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :name, :string
    add_column :spaces, :address, :string
    add_column :spaces, :price_per_day, :integer
    add_reference :spaces, :user, foreign_key: true
  end
end
