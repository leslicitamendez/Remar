class CreateIngresos < ActiveRecord::Migration
  def change
    create_table :ingresos do |t|
      t.float :montoBs
      t.string :concepto
      t.date :fecha
      t.boolean :estado
      t.belongs_to :venta, index: true
      t.belongs_to :recepcionDonativo, index: true

      t.timestamps
    end
  end
end
