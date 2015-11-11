class ChangeProduccionToStock < ActiveRecord::Migration
  def change
  	add_reference :stocks, :product, index: true
  end
end
