class BajarTablaInternoYConyugue < ActiveRecord::Migration
  def change
  	drop_table :internos
  	drop_table :conyugues
  end
end
