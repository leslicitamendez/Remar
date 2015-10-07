class CreateEntregaProductos < ActiveRecord::Migration
  def change
    create_table :entrega_productos do |t|
      t.date :fecha
      t.time :hora
      t.integer :cantidad
      t.boolean :estado
      t.belongs_to :product, index: true
      t.belongs_to :voluntario, index: true

      t.timestamps
    end
  end
end
