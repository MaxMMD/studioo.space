class CreateSpaceTags < ActiveRecord::Migration[5.2]
  def change
    create_table :space_tags do |t|
      t.references :space, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
