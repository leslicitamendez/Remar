class CreateHistoriaClinicas < ActiveRecord::Migration
  def change
    create_table :historia_clinicas do |t|
      t.text :enfermedades
      t.text :causa_internacion
      t.text :observaciones
      t.references :interno, index: true

      t.timestamps
    end
  end
end
