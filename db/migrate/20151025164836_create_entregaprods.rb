class CreateEntregaprods < ActiveRecord::Migration
  def change
    create_table :entregaprods do |t|
      t.date :fecha
      t.time :hora
      t.integer :cantidad
      t.text :observaciones
      t.boolean :estado
      t.references :voluntario, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
