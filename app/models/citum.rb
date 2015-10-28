class Citum < ActiveRecord::Base
	validates :ubicación, presence: {:message => "- La ubicacion es un campo obligatorio"}
  validates :ubicación, length: { maximum: 50, too_long: "- %{count} caracteres es la longitud maxima permitida" }

	validates_time :hora, :between => ['9:00am', '5:00pm'], :on_or_after_message =>"solo se atiende entre 9:00am y 5:00pm",:on_or_before_message =>"solo se atiende entre 9:00am y 5:00pm" # On or after 9:00AM and on or before 5:00PM
	validates :nombreDonante, presence: {:message => "- el nombre es un campo obligatorio"}
  validates :nombreDonante, length: { maximum: 20, too_long: "- %{count} caracteres es la longitud maxima permitida" }

	validate :date_cannot_be_in_the_pas

  	def date_cannot_be_in_the_pas
    errors.add(:fecha, "Solo se programaran citas del dia siguiente en adelante") if
      !self.fecha.blank? and self.fecha <= Date.today
    end

    def default_values
    	self.estado = "Pendiente"
  	end

end
