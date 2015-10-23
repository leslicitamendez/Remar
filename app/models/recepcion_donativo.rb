class RecepcionDonativo < ActiveRecord::Base

	belongs_to :voluntario

	validate :date_cannot_be_in_the_future
	
	validates :nombreDonante, presence: {:message => "- El nombre es un campo obligatorio"}

	validates :articulo, presence: {:message => "- El tipo de Articulo es un campo obligatorio"}

	validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
	validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

	def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran recepciones a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
  	end


end
