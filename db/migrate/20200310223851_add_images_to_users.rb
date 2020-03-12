class AddImagesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pictures, :string
  end
end
