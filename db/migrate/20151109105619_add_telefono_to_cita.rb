class AddTelefonoToCita < ActiveRecord::Migration
  def change
    add_column :cita, :telefono, :integer
  end
end
