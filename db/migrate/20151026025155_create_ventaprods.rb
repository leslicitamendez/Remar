class CreateVentaprods < ActiveRecord::Migration
  def change
    create_table :ventaprods do |t|
      t.integer :cantidad
      t.date :fecha
      t.float :precioUnidad
      t.boolean :estado
      t.text :observaciones
      t.references :rendicionprod, index: true
      t.references :entregaprod, index: true

      t.timestamps
    end
  end
end
