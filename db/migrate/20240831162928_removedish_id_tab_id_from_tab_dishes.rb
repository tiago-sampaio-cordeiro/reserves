class RemovedishIdTabIdFromTabDishes < ActiveRecord::Migration[7.1]
  def change
    remove_reference :tab_dishes, :dish,foreign_key: true
    remove_reference :tab_dishes, :tab, foreign_key: true
  end
end
