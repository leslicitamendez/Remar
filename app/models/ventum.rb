class Ventum < ActiveRecord::Base
  belongs_to :entregaProducto
  belongs_to :rendicionProducto

  validates_date :feche, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran rendiciones a futuro'
  
  validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
  validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

  validates :precioUnidad, presence: {:message => "- El precio es un campo obligatorio"}
  validates :precioUnidad, :numericality => {:greater_than => 0, :message => "- El precio debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

end
