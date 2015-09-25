class CreateAvaluoDonativos < ActiveRecord::Migration
  def change
    create_table :avaluo_donativos do |t|
      t.float :montoBs
      t.text :observacion

      t.timestamps
    end
  end
end
