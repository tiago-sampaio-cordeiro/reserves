class RemoveColumnFavoriteRestaurantName < ActiveRecord::Migration[7.1]
  def change
    remove_column :favorites, :favorite_restaurant_name
  end
end
