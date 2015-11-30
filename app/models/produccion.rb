class Produccion < ActiveRecord::Base
  belongs_to :product
  has_one :stock

  validates :cantidad, presence: {:message => "- Es un campo obligatorio"}
  validates :cantidad, allow_blank: true,:numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}
  #validates :cantidad, length: {maximum: 4, too_long: "- %{count} caracteres es la longitud maxima permitida"}

  validate :fechaProduccionNoPuedeEstarEnPasado
  validate :fechaVencimientoNoPuedeSerMenorAFechaProduccion

  def fechaProduccionNoPuedeEstarEnPasado
    errors.add(:fecha_produccion, "- No se puede registrar fecha inferior a la actual") if
      !self.fecha_produccion.blank? and self.fecha_produccion < Date.today
    end

  def fechaVencimientoNoPuedeSerMenorAFechaProduccion
    errors.add(:fecha_vencimiento, "- No puede ser inferior a Fecha Produccion") if
		!self.fecha_vencimiento.blank? and self.fecha_vencimiento < self.fecha_produccion
    end

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
