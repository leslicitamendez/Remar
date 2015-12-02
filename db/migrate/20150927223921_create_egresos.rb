class CreateEgresos < ActiveRecord::Migration
  def change
    create_table :egresos do |t|
      t.float :monto
      t.date :fecha

      t.timestamps
    end
  end
end
