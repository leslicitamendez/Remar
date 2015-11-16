class Change < ActiveRecord::Migration
  def change
  	rename_column :recepcion_donativos, :cantidad, :precio
  end
end
