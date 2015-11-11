class Stock < ActiveRecord::Base
  belongs_to :produccions
  belongs_to :product
end
