class AddRestaurantIdToReviews < ActiveRecord::Migration[8.0]
  def change
    add_reference :reviews, :restaurant, null: false, foreign_key: true
  end
end
