class CreateEgresoProduccions < ActiveRecord::Migration
  def change
    create_table :egreso_produccions do |t|
      t.text :observaciones
      t.references :egreso, index: true
      t.references :produccion, index: true

      t.timestamps
    end
  end
end
