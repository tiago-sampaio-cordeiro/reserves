class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :address

      t.timestamps
    end
  end
end
