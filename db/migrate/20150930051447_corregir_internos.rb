class CorregirInternos < ActiveRecord::Migration
  def change
  	remove_column :internos, :interno_id
  	add_column :conyugues, :interno_id, :integer
  	remove_column :conyugues, :id_interno
  end
end
