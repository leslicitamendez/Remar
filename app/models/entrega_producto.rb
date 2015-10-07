class EntregaProducto < ActiveRecord::Base
  belongs_to :product
  belongs_to :voluntario

  validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran Entrgas a futuro'
  
  validates :cantidad, presence: {:message => "- La cantidad es un campo obligatorio"}
  validates :cantidad, :numericality => {:greater_than => 0, :message => "- La cantidad debe ser mayor a 0"}

  before_save :default_values

  def default_values
    self.estado ||= 'true'
  end

end
