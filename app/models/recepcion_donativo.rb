class RecepcionDonativo < ActiveRecord::Base

	belongs_to :voluntario

	
	validates :descripcion, presence: {:message => "- La Descripcion es un campo obligatorio"}

	validates :articulo, presence: {:message => "- El tipo de Articulo es un campo obligatorio"}
	

	def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran recepciones a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
  	end


end
