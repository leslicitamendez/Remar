class CreateRecepcionDonativos < ActiveRecord::Migration
  def change
    create_table :recepcion_donativos do |t|
      t.date :fecha
      t.string :nombreDonante
      t.string :articulo
      t.float :cantidad
      t.text :descripcion
      t.string :id_voluntario

      t.timestamps
    end
  end
end
