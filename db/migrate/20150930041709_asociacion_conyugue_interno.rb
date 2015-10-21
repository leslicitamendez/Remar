class AsociacionConyugueInterno < ActiveRecord::Migration
  def change
  	add_column :Conyugues, :id_interno, :integer
  end
end
