class CreateGastoInternos < ActiveRecord::Migration
  def change
    create_table :gasto_internos do |t|
      t.date :fecha
      t.string :concepto
      t.text :descripcion
      t.float :monto
      t.references :interno, index: true

      t.timestamps
    end
  end
end
