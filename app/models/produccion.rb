class Produccion < ActiveRecord::Base
  belongs_to :product

  def self.search(search)
		if search
			where('product_id like ?', "%#{search}%")
		else
			scoped
		end
	end
end
