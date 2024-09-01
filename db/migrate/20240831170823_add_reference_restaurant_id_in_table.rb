class AddReferenceRestaurantIdInTable < ActiveRecord::Migration[7.1]
  def change
    add_reference :tables, :restaurant, null: false, foreign_key: true
  end
end
