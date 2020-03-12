class RemovePicturesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pictures, :string

  end
end
