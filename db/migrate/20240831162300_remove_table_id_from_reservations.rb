class RemoveTableIdFromReservations < ActiveRecord::Migration[7.1]
  def change
    remove_reference :reservations, :table, foreign_key: true
  end
end
