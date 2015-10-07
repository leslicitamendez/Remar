class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :cantidad
      t.date :feche
      t.float :precioUnidad
      t.boolean :estado
      t.belongs_to :entregaProducto, index: true
      t.belongs_to :rendicionProducto, index: true

      t.timestamps
    end
  end
end
