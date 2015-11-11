class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :nombre
      t.string :estado

      t.timestamps
    end
  end
end
