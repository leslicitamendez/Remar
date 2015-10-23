class AddestadoTocita < ActiveRecord::Migration
  def change
  	add_column :cita, :estado, :string
  end
end
