class CambiarTipoDelId < ActiveRecord::Migration
  def change
  	remove_column :internos, :id_interno
  	add_column :internos, :interno_id, :integer
  end
end
