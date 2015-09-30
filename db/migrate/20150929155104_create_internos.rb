class CreateInternos < ActiveRecord::Migration
  def change
    create_table :internos do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :sexo
      t.integer :ci
      t.string :estadoCivil
      t.text :direccion
      t.string :zona
      t.integer :telefono
      t.date :fechaNacimiento
      t.string :lugarNacimiento
      t.string :estudios
      t.string :profesion
      t.string :oficio
      t.date :fechaIngreso

      t.timestamps
    end
  end
end
