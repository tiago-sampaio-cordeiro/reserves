class CreateTabDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :tab_dishes do |t|
      t.references :tab, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
