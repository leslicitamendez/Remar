class Interno < ActiveRecord::Base
	has_one :historia_clinica
	has_many :egreso_internos
end
