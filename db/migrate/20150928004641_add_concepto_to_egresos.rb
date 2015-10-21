class AddConceptoToEgresos < ActiveRecord::Migration
  def change
    add_column :egresos, :concepto, :string
  end
end
