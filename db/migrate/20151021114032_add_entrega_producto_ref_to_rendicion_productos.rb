class AddEntregaProductoRefToRendicionProductos < ActiveRecord::Migration
  def change
    add_reference :rendicion_productos, :entrega_productos, index: true
  end
end
