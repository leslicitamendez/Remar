class AddEstado < ActiveRecord::Migration
  def change
  	add_column :internos, :state, :string  
  end
end
