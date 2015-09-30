class Product < ActiveRecord::Base
	#attr_accessible :name

	has_many :produccions

	validates :code, presence: {:message => "- El codigo del producto es un campo obligatorio"}
	validates :code, uniqueness: {case_sensitive: false, :message => "El codigo ya existe"}
	
	validates :name, presence: {:message => "- El nombre del producto es un campo obligatorio"}
	validates :name, uniqueness: {case_sensitive: false, :message => "- El producto ya existe"}
	validates :name, length: { maximum: 30, too_long: "- %{count} caracteres es la longitud maxima permitidaqw" }

	validates :description, presence: {:message => "- La descripcion es un campo obligatorio"}
	validates :state, presence: {:message => "- El estado del producto es un campo obligatorio"}

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end

end
