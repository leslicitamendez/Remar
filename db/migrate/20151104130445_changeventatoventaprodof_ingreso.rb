class ChangeventatoventaprodofIngreso < ActiveRecord::Migration
  def change
  	rename_column :ingresos, :venta_id, :ventaprod_id
  end
end
