class Rehab < ActiveRecord::Base
	belongs_to :interno

	validates :causaInternacion, presence: {:message => "- Causa Internacion es un campo obligatorio"}
	validates :tiempoConsumo, presence: {:message => "- El Tiempo de Consumo es un campo obligatorio"}
	validates :tiempoConsumo, :numericality => {allow_blank: true,:greater_than => 0, :message => "- El monto debe ser mayor a 0"}
end
