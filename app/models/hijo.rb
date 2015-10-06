class Hijo < ActiveRecord::Base
	has_one :interno

  def default_values
    self.estado ||= 'true'
  end

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

validates :sexo, presence: {:message => "- Es un campo obligatorio el campo sexo"}
	

	validates :lugarNacimiento, format: { with: /\A[a-zA-Z ]+\z/, message: "- Solo se aceptan letras"}
  
end
