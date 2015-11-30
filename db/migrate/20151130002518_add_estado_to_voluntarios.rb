class AddEstadoToVoluntarios < ActiveRecord::Migration
  def change
    add_column :voluntarios, :estado, :string
  end
end
