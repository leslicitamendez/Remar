class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :sexo
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.integer :ci
      t.integer :telefono
      t.text :direccion

      t.timestamps
    end
  end
end
