class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :produccions, index: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
