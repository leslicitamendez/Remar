class EgresoProduccion < ActiveRecord::Base
  belongs_to :egreso
  belongs_to :produccion

  validates :observaciones, presence: {:message => "Es un campo obligatorio"}
end
