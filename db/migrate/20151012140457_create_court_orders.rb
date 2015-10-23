class CreateCourtOrders < ActiveRecord::Migration
  def change
    create_table :court_orders do |t|
      t.text :descripcion
      t.boolean :estado
      t.references :interno, index: true

      t.timestamps
    end
  end
end
