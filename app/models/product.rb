class Product < ActiveRecord::Base
	#attr_accessible :name

	has_many :produccions
	has_many :entregaProducto
	has_many :rendicionProducto

	validates :code, presence: {:message => "- El codigo del producto es un campo obligatorio"}
	validates :code, uniqueness: {case_sensitive: false, :message => "El codigo ya existe"}
	validates :code, length: { maximum: 5, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	
	validates :name, presence: {:message => "- El nombre del producto es un campo obligatorio"}
	validates :name, uniqueness: {case_sensitive: false, :message => "- El producto ya existe"}
	validates :name, length: { maximum: 30, too_long: "- %{count} caracteres es la longitud maxima permitida" }
	validates :name, format: { allow_blank: true, with: /\A[a-zA-Z ]+\z/, :message => "Solo se aceptan letras" }

	validates :description, presence: {:message => "- La descripcion es un campo obligatorio"}
	validates :description, length: {maximum: 100, too_long: "- %{count} caracteres es la longitud maxima permitida"}

	validates :unity, presence: {:message => "- La unidad del producto es un campo obligatorio"}
	validates :unity, length: {maximum: 20, too_long: "- %{count} caracteres es la longitud maxima permitida"}

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end

	def activo
		self.state = 'Activo'
		self.save!
	end
	def to_s
    	code.to_s+" "+name.to_s
  	end

  	def full_code
		"#{self.code} - #{self.name} "
	end 
end
