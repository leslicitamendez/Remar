class CreateEgresos < ActiveRecord::Migration
  def change
    create_table :egresos do |t|
      t.string :estado
      t.integer :monto
      t.date :fecha

      t.timestamps
    end
  end
end
