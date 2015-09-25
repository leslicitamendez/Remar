class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.date :fecha
      t.time :hora
      t.text :ubicación
      t.string :nombreDonante
      t.text :descripcionDonacion

      t.timestamps
    end
  end
end
