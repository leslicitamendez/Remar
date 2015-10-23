class CreateHijos < ActiveRecord::Migration
  def change
    create_table :hijos do |t|
      t.boolean :estado
      t.string :sexo
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.integer :ci
      t.date :fechaNacimiento
      t.string :lugarNacimiento

      t.timestamps
    end
  end
end
