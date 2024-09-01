class AddReferenceRestaurantIdInDish < ActiveRecord::Migration[7.1]
  def change
    add_reference :dishes, :restaurant, foreign_key: true
  end
end
