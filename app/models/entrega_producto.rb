class EntregaProducto < ActiveRecord::Base
  belongs_to :product
  belongs_to :voluntario

  validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
  validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran entregas a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
    end
end
