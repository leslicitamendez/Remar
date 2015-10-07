class CreateRendicionProductos < ActiveRecord::Migration
  def change
    create_table :rendicion_productos do |t|
      t.date :fecha
      t.time :hora
      t.integer :cantidad
      t.text :observaciones
      t.boolean :estado
      t.belongs_to :Product, index: true
      t.belongs_to :Voluntario, index: true

      t.timestamps
    end
  end
end
