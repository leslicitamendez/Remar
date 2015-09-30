class CreateConyugues < ActiveRecord::Migration
  def change
    create_table :conyugues do |t|
      t.string :estado
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.integer :ci
      t.string :lugarNacimiento
      t.date :fechaNacimiento
      t.integer :telefono
      t.text :direccion

      t.timestamps
    end
  end
end
