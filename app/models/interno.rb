class Interno < ActiveRecord::Base
	has_one :historia_clinica
	has_many :egreso_internos

	validates :ci, presence: {:message => "- El carnet es un campo obligatorio"}
	validates :ci, uniqueness: {case_sensitive: false, :message => "- El carnet ya existe"}
	validates :ci, format: { with: /^\d+#$/, message: "- Solo se aceptan numeros"}
	validates :ci, length: { maximum: 7, too_long: "- %{count} caracteres es la longitud maxima permitida" }

	validates :apellido1, presence: {:message => "- El apellido Paterno es un campo obligatorio"}
	validates :apellido1, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido1, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Paterno" }
	
	validates :apellido2, presence: {:message => "- El apellido Materno es un campo obligatorio"}
	validates :apellido2, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :apellido2, length: { maximum: 25, too_long: "- %{count} caracteres es la longitud maxima permitida para apellido Materno" }
	
	validates :nombre, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :nombre, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }


	validates :direccion, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :direccion, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :direccion, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }

	validates :zona, presence: {:message => "- El nombre es un campo obligatorio"}
	validates :zona, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :zona, length: { maximum: 35, too_long: "- %{count} caracteres es la longitud maxima permitida para un nombre" }

	
end