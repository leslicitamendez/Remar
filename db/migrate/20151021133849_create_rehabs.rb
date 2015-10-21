class CreateRehabs < ActiveRecord::Migration
  def change
    create_table :rehabs do |t|
      t.text :enfermedades
      t.text :causaInternacion
      t.integer :tiempoConsumo
      t.string :centroAnterior
      t.string :nombreCentre
      t.integer :tiempoEstancia
      t.text :motivoRetiro
      t.text :observaciones
      t.integer :interno_id

      t.timestamps
    end
  end
end
