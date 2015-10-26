class Rehab < ActiveRecord::Base
	belongs_to :interno

	validates :causaInternacion, presence: {:message => "- Causa Internacion es un campo obligatorio"}
	validates :tiempoConsumo, presence: {:message => "- El Tiempo de Consumo es un campo obligatorio"}
end
