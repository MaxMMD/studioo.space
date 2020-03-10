class RemoveSpaceFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :space, foreign_key: true
  end
end
