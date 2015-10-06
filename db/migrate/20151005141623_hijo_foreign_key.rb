class HijoForeignKey < ActiveRecord::Migration
  def change
  	add_column :hijos, :interno_id, :integer
  end
end
