class CreateFavoriteRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_restaurants do |t|
      t.references :favorite, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
