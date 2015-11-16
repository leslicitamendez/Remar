class Changeestado < ActiveRecord::Migration
  def change
  	rename_column :recepcion_donativos, :nombreDonante, :estado
  end
end
