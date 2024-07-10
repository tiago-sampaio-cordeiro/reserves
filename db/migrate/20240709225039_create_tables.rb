class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.integer :number_table

      t.timestamps
    end
  end
end
