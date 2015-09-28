class Product < ActiveRecord::Base
	has_many :produccions

	validates :code, presence: {:message => "- El codigo del producto es un campo obligatorio"}
	
	validates :name, presence: {:message => "- El nombre del producto es un campo obligatorio"}
	validates :name, uniqueness: {case_sensitive: false, :message => "- El producto ya existe"}
	validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :name, length: { maximum: 30, too_long: "- %{count} caracteres es la longitud maxima permitidaqw" }

	validates :description, presence: {:message => "- La descripcion es un campo obligatorio"}
	validates :state, presence: {:message => "- El estado del producto es un campo obligatorio"}
end
