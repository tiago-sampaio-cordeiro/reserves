class AddReferenceDishIdInTab < ActiveRecord::Migration[7.1]
  def change
    add_reference :tabs, :dish, foreign_key: true
  end
end
