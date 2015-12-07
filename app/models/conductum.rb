class Conductum < ActiveRecord::Base
	belongs_to :interno

	def default_values
    self.estado ||= 'true'
  end


def full_name
  "#{self.nombre} #{self.apellido1} #{self.apellido2}"
end

	validates :descripcion, presence: {:message => "- La Direccion es un campo obligatorio"}
	validates :descripcion, length: { maximum: 35, muy_largo: "- %{count} caracteres es la longitud maxima permitida para un descripcion" }
	validates :descripcion, format: { with: /\A[a-zA-Z0-9 \W]+\z/, message: "- Solo se aceptan letras"}


  	validates :tipoConducta, presence: {:message => "- Tipo de conducta es un campo obligatorio"}
	
	
	


end
