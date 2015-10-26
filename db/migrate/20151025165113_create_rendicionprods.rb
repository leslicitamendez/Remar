class CreateRendicionprods < ActiveRecord::Migration
  def change
    create_table :rendicionprods do |t|
      t.date :fecha
      t.time :hora
      t.integer :cantidad
      t.text :observaciones
      t.boolean :estado
      t.references :entregaprod, index: true

      t.timestamps
    end
  end
end
