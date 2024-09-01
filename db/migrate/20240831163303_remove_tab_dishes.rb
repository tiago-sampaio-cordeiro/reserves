class RemoveTabDishes < ActiveRecord::Migration[7.1]
  def change
    drop_table :tab_dishes
  end
end
