class DonativoVoluntario < ActiveRecord::Migration
  def change
  	add_column :recepcion_donativos, :voluntario_id, :integer
  end
end
