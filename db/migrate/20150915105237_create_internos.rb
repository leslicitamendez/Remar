class CreateInternos < ActiveRecord::Migration
  def change
    create_table :internos do |t|
      t.string :sexo
      t.boolean :estado
      t.date :fechaIngreso
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :ci
      t.string :estadoCivil
      t.string :lugarNacimiento
      t.date :fechaNacimiento
      t.text :direccion
      t.string :zona
      t.string :telefono
      t.string :estudios
      t.string :profesion
      t.string :oficio

      t.timestamps
    end
  end
end
