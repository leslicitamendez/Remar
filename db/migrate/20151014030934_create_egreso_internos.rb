class CreateEgresoInternos < ActiveRecord::Migration
  def change
    create_table :egreso_internos do |t|
      t.string :concepto
      t.float :monto
      t.text :observaciones
      t.date :fecha
      t.references :interno, index: true
      t.references :egreso, index: true

      t.timestamps
    end
  end
end
