class ChangeEstadotypeofCita < ActiveRecord::Migration
  def change
  	change_column :cita, :estado, :string
  end
end
