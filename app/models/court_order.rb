class CourtOrder < ActiveRecord::Base
  belongs_to :interno
  validates :descripcion, presence: {:message => "- Descripcion es un campo obligatorio"}
  validates :numero, presence: {:message => "- Numero es un campo obligatorio"}
  validates :numero, :numericality => {allow_blank: true,:greater_than => 0, :message => "- El numero debe ser mayor a 0"}
end
