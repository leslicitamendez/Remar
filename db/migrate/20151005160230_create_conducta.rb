class CreateConducta < ActiveRecord::Migration
  def change
    create_table :conducta do |t|
      t.boolean :estado
      t.date :fecha
      t.text :descripcion
      t.string :tipoConducta

      t.timestamps
    end
  end
end
