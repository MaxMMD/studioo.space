class AddCityToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :city, :string
  end
end
