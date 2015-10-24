class Voluntario < ActiveRecord::Base

	has_many :recepcion_donativos
	has_many :entregaProductos

	validates :ci, presence: {:message => "- El carnet es un campo obligatorio"}
	validates :ci, uniqueness: { :message => "- El carnet ya existe"}
	validates :ci, format: { with: /\A[+-]?\d+\z/ , message: " Solo se aceptan numeros"}
	validates :ci, length: { minimum: 6, maximum: 7, too_long: "- %{count} caracteres es la longitud maxima permitida", too_short: "- %{count} caracteres es la longitud minima permitida" }
	
	validates :apellido1, presence: {:message => "- El apellido Materno es un campo obligatorio"}
	validates :apellido1, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido1, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }
	
	validates :apellido2, presence: {:message => "- El apellido Paterno es un campo obligatorio"}
	validates :apellido2, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido2, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }

	validates :nombre, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :nombre, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :nombre, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }

	validates :NivelConfianza, :numericality => {:greater_than_or_equal_to => 0, :message => "- nivel de confianza entre 0-100"}
	validates :NivelConfianza, :numericality => {:less_than_or_equal_to => 100, :message => "- nivel de confianza entre 0-100"}

	def full_name
  		"#{self.nombre} #{self.apellido1} #{self.apellido2}"
	end  

end
