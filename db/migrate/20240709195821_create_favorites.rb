class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.string :favorite_restaurant_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
