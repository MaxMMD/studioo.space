class AddContentColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :content, :text
  end
end
