class RemoveRestaurantIdFromFavorites < ActiveRecord::Migration[7.1]
  def change
    remove_reference :favorites, :restaurant, foreign_key: true
  end
end
