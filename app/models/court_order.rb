class CourtOrder < ActiveRecord::Base
  belongs_to :interno
  validates :descripcion, presence: {:message => "- Descripcion es un campo obligatorio"}
  validates :numero, :numericality => {:greater_than => 0, :message => "- El numero debe ser mayor a 0"}
end
