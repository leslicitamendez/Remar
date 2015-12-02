class CreateProduccions < ActiveRecord::Migration
  def change
    create_table :produccions do |t|
      t.date :fecha_produccion
      t.date :fecha_vencimiento
      t.integer :cantidad
      t.references :product, index: true

      t.timestamps
    end
  end
end
