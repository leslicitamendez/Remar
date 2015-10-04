class Interno < ActiveRecord::Base
	has_one :historia_clinica
	has_many :egreso_internos
	has_one :conyugue




	validates :ci, presence: {:message => "- El carnet es un campo obligatorio"}
	validates :ci, uniqueness: { :message => "- El carnet ya existe"}
	validates :ci, format: { with: /\A[+-]?\d+\z/ , message: " Solo se aceptan numeros"}
	validates :ci, length: { maximum: 7, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	validates :ci, length: { minimum: 6, too_long: "- %{count} caracteres es la longitud minima permitida" }
	
	validates :apellido1, presence: {:message => "- El apellido Materno es un campo obligatorio"}
	validates :apellido1, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido1, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }

	validates :apellido2, presence: {:message => "- El apellido Materno es un campo obligatorio"}
	validates :apellido2, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido2, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }

	validates :nombre, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :nombre, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
	validates :nombre, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }


	validates :direccion, presence: {:message => "- La Direccion es un campo obligatorio"}
	validates :direccion, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un direccion" }
	validates :direccion, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "- Solo se aceptan letras"}

	validates :estadoCivil, presence: {:message => "- El Estado Civil es un campo obligatorio"}

	validates :sexo, presence: {:message => "- El Estado Civil es un campo obligatorio"}

	validates :telefono, length: { maximum: 10, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	validates :telefono, length: { minimum: 6, too_long: "- %{count} caracteres es la longitud minima permitida" }

	validates :profesion, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}, allow_blank: true
	
	validates :oficio, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}, allow_blank: true

	validates :estudios, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}, allow_blank: true

	validates :lugarNacimiento, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}

end