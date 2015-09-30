class CambiarTiposEnInterno < ActiveRecord::Migration
  def change
  	def up
    	change_column :internos, :ci, :integer
    	change_column :internos, :telefono, :integer
  	end

  	def down
    	change_column :internos, :ci, :string
    	change_column :internos, :telefono, :string
  	end
  end
end
