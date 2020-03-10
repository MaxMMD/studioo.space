class AddRatingToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :ratings, :integer
  end
end
