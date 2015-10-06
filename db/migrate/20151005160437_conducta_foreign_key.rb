class ConductaForeignKey < ActiveRecord::Migration
  def change
  	add_column :conducta, :interno_id, :integer
  end
end
