class Egreso < ActiveRecord::Base
	validates :concepto, presence: {:message => "- Es un campo obligatorio"}
	validates :concepto, length: { maximum: 50, :message => "No debe tener mas de 50 caracteres"}

	validates :monto, presence: {:message => "- Es un campo obligatorio"}
	validates :monto, :numericality => {:greater_than => 0, :message => "- El monto debe ser mayor a 0"}
	validates :monto, length: {maximum: 10, too_long: "- %{count} caracteres es la longitud maxima permitida"}

	validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran Egresos a futuro'
	
	def self.search(search)
		if search
			where('concepto LIKE ?', "%#{search}%")
		else
			scoped
		end
	end

	def activo
		self.estado = 'Activo'
		self.save!
	end
end
