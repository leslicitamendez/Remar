class Produccion < ActiveRecord::Base
  belongs_to :product

  def self.search(search)
	if search
		where('product like ?', "%#{search}%")
	else
		scoped
	end
  end

	def activo
		self.estado = 'Activo'
		self.save!
	end

	def correspondeAProducto(producto)
		parametros = producto.split(' ')
		parametros.each do |parametro|
			if Product.find(self.product_id.to_i).name.downcase.include?(parametro.downcase)
				return true
			end
		end
		false
	end
end
