class OrdenJudicialNumero < ActiveRecord::Migration
  def change
  	add_column :court_orders, :numero, :string
  end
end
