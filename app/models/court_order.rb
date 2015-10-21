class CourtOrder < ActiveRecord::Base
  belongs_to :interno
  validates :descripcion, presence: {:message => "- Descripcion es un campo obligatorio"}
  validates :numero, presence: { :message => "- Numero de orden judicial es un campo obligatorio"}
end
