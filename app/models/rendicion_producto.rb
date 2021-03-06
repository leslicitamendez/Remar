class RendicionProducto < ActiveRecord::Base
  belongs_to :product
  belongs_to :voluntario
  belongs_to :entrega_producto

  has_one :ventum

  validate :date_cannot_be_in_the_future
  
  validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
  validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

  def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran rendiciones a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
  end

end
