class Egreso < ActiveRecord::Base
	validates :concepto, presence: {:message => "- Es un campo obligatorio"}
	#validates :concepto, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :concepto, length: { maximum: 30, :message => "No debe tener mas de 30 caracteres"}

	validates :monto, presence: {:message => "- Es un campo obligatorio"}
end
