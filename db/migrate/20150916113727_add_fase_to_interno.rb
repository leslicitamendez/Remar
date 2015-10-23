class AddFaseToInterno < ActiveRecord::Migration
  def change
    add_column :internos, :fase, :integer
  end
end
