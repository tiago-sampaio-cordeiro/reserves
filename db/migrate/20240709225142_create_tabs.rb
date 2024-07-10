class CreateTabs < ActiveRecord::Migration[7.1]
  def change
    create_table :tabs do |t|
      t.float :total
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
