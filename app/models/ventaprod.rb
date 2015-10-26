class Ventaprod < ActiveRecord::Base
  belongs_to :rendicionprod
  belongs_to :entregaprod

  validate :date_cannot_be_in_the_future
  
  validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
  validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

  validates :precioUnidad, presence: {:message => "- El precio es un campo obligatorio"}
  validates :precioUnidad, :numericality => {:greater_than => 0, :message => "- El precio debe ser mayor a 0"}


  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

  def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran ventas a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
  end

end
