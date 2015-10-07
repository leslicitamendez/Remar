class RecepcionDonativo < ActiveRecord::Base

	belongs_to :voluntario
	
	validates :nombreDonante, presence: {:message => "- El nombre es un campo obligatorio"}
	validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'solo se registran donativos a futuro'
	validates :articulo, presence: {:message => "- El tipo de Articulo es un campo obligatorio"}
	validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
	validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}


end
