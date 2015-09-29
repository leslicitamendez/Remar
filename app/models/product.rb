class Product < ActiveRecord::Base
	attr_accessible :name

	has_many :produccions

	validates :code, presence: {:message => "- El codigo del producto es un campo obligatorio"}
	validates :code, uniqueness: {case_sensitive: false, :message => "El codigo ya existe"}
	
	validates :name, presence: {:message => "- El nombre del producto es un campo obligatorio"}
	validates :name, uniqueness: {case_sensitive: false, :message => "- El producto ya existe"}
	validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}
	validates :name, length: { maximum: 30, too_long: "- %{count} caracteres es la longitud maxima permitidaqw" }

	validates :description, presence: {:message => "- La descripcion es un campo obligatorio"}
	validates :state, presence: {:message => "- El estado del producto es un campo obligatorio"}

	def correspondeAnombre(nombre)
      parametros = nombre.split(' ')
      parametros.each do |parametro|
        if self.name.downcase.include?(parametro.downcase)
          return true
        end
      end
      false
    end
end
