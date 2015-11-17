class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :code, :string
    add_column :products, :description, :text
    add_column :products, :state, :string
    add_column :products, :unity, :string
    add_column :products, :price, :float
  end
end
