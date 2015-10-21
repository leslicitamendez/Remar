class CreateVoluntarios < ActiveRecord::Migration
  def change
    create_table :voluntarios do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :direccion
      t.integer :NivelConfianza
      t.integer :telefono
      t.string :ci

      t.timestamps
    end
  end
end
