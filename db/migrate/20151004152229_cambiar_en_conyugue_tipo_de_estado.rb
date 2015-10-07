class CambiarEnConyugueTipoDeEstado < ActiveRecord::Migration
  def change
  	change_column :conyugues, :estado,  :boolean
  end
end
