class Produccion < ActiveRecord::Base
  belongs_to :product

  def self.search(search)
	if search
		where('product_id like ?', "%#{search}%")
	else
		scoped
	end
  end

	def activo
		self.estado = 'Activo'
		self.save!
	end
end
