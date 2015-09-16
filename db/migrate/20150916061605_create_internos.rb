class CreateInternos < ActiveRecord::Migration
  def change
    create_table :internos do |t|
      t.date :fechaIngreso
      t.string :nombres
      t.string :apellidoPaterno
      t.string :apellidoMaterno
      t.integer :ci
      t.string :estadoCivil
      t.integer :edad
      t.string :conyugue
      t.integer :numeroDHijos
      t.string :lugarDNacimiento
      t.date :fechaDNacimiento
      t.text :direccion
      t.string :zona
      t.integer :telefono
      t.text :referencias
      t.string :estudios
      t.string :profesionUOficio
      t.text :enfermedades
      t.text :causaInternacion
      t.integer :tiempoDConsumo
      t.string :centroAnterior
      t.integer :tiempoEstancia
      t.text :motivoDRetiro
      t.string :ordenJudicial
      t.text :observaciones

      t.timestamps
    end
  end
end
