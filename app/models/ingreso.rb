class Ingreso < ActiveRecord::Base
  belongs_to :venta
  belongs_to :recepcionDonativo

  validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran Ingresos a futuro'

  validates :concepto, presence: {:message => "- El concepto es un campo obligatorio"}
  
  validates :montoBs, presence: {:message => "- El monto es un campo obligatorio"}
  validates :montoBs, :numericality => {:greater_than => 0, :message => "- El monto debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

end
