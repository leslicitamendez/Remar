class AddFechaToHistoriaClinicas < ActiveRecord::Migration
  def change
    add_column :historia_clinicas, :fecha, :date
  end
end
