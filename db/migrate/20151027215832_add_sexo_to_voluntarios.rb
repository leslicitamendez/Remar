class AddSexoToVoluntarios < ActiveRecord::Migration
  def change
    add_column :voluntarios, :sexo, :string
  end
end
