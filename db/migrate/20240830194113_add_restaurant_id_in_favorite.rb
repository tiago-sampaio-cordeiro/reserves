class AddRestaurantIdInFavorite < ActiveRecord::Migration[7.1]
  def change
    add_reference :favorites, :restaurant, null: false, foreign_key: true
  end
end
