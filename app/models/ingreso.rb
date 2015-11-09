class Ingreso < ActiveRecord::Base
  belongs_to :recepcionDonativo
  belongs_to :ventaprod
  

  validates :concepto, presence: {:message => "- El concepto es un campo obligatorio"}
  
  validates :montoBs, presence: {:message => "- El monto es un campo obligatorio"}
  validates :montoBs, :numericality => {:greater_than => 0, :message => "- El monto debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

  validate :date_cannot_be_in_the_future

  def date_cannot_be_in_the_future
    errors.add(:fecha, "No se registran Ingresos a futuro") if
      !self.fecha.blank? and self.fecha > Date.today
    end

end
