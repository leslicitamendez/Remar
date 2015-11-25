class Interno < ActiveRecord::Base
	has_many :historia_clinicas
	has_many :egreso_internos
	has_one :conyugue
	has_one :referencia
	has_many :hijos
	has_many :conducta
	has_one :contact
	has_many :court_orders
	has_many :rehabs

def full_name
  "#{self.nombre} #{self.apellido1} #{self.apellido2}"

end


	validates :ci, presence: {:message => "- El carnet es un campo obligatorio"}
	validates :ci, uniqueness: { :message => "- El carnet ya existe"}
	validates :ci, format: {allow_blank: true, with: /\A[+-]?\d+\z/ , message: " Solo se aceptan numeros"}
	validates :ci, length: {allow_blank: true, maximum: 7, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	validates :ci, length: {allow_blank: true, minimum: 6, too_long: "- %{count} caracteres es la longitud minima permitida" }
	
	validates :apellido1, presence: {:message => "- El apellido paterno es un campo obligatorio"}
	validates :apellido1, format: { allow_blank: true,with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido1, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Paterno" }

	
	validates :apellido2, format: { with: /\A[a-zA-Z ]+\z/, allow_blank: true, message: "- Solo se aceptan letras"}
	validates :apellido2, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }

	validates :nombre, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :nombre, format: { allow_blank: true,with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :nombre, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }


	validates :direccion, presence: {:message => "- La Direccion es un campo obligatorio"}
	validates :direccion, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un direccion" }
	validates :direccion, format: {allow_blank: true, with: /\A[a-zA-Z0-9 #]+\z/, message: "- Solo se aceptan letras"}

	validates :estadoCivil, presence: {:message => "- El Estado Civil es un campo obligatorio"}

	validates :sexo, presence: {:message => "- El Estado Civil es un campo obligatorio"}

	validates :telefono, length: { maximum: 10, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	validates :telefono, length: { minimum: 6, too_long: "- %{count} caracteres es la longitud minima permitida" }, :allow_blank => true
	validates :telefono,    :numericality => true, :allow_blank => true

	validates :profesion, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras en el campo profesion"}, allow_blank: true
	
	validates :oficio, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras en el campo oficio"}, allow_blank: true

	validates :estudios, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras en el campo Estudios"}, allow_blank: true

	validates :lugarNacimiento, presence: {:message => "- Lugar de Nacimiento es un campo obligatorio"} 



end