class EgresoInterno < ActiveRecord::Base
  belongs_to :interno
  belongs_to :egreso

  validates :concepto, presence: {:message => "- Es un campo obligatorio"}
  validates :concepto, length: { maximum: 50, :message => "No debe tener mas de 50 caracteres"}

  validates :monto, presence: {:message => "- Es un campo obligatorio"}
  validates :monto, :numericality => {:greater_than => 0, :message => "- El monto debe ser mayor a 0"}

  validates :fecha, presence: {:message => "- Es un campo obligatorio"}
  validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran Egresos a futuro'

  def self.search(search)
  	if search
  		where('interno_id like ?', "%#{search}%")
  	else
  		scoped
  	end
  end
end
