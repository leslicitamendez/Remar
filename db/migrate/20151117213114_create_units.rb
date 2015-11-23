class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unidad

      t.timestamps
    end
  end
end
