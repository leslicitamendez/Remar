class EgresoInterno < ActiveRecord::Base
  belongs_to :interno
  belongs_to :egreso

  validates :concepto, presence: {:message => "- Es un campo obligatorio"}
  validates :concepto, length: { maximum: 30, :message => "No debe tener mas de 50 caracteres"}

  validates :monto, presence: {:message => "- Es un campo obligatorio"}
  validates :monto, :numericality => {:greater_than => 0, :message => "- El monto debe ser mayor a 0"}
  validates :monto, length: {maximum: 10, too_long: "- %{count} caracteres es la longitud maxima permitida"}

  validates :fecha, presence: {:message => "- Es un campo obligatorio"}
  validates_date :fecha, :on => :create, :on_or_before => :today, :on_or_before_message => 'No se registran Egresos a futuro'

  def self.search(search)
  	if search
  		where('interno like ?', "%#{search}%")
  	else
  		scoped
  	end
  end

  def correspondeAinterno(interno)
    parametros = interno.split(' ')
    parametros.each do |parametro|
      if Interno.find(self.interno_id.to_i).nombre.downcase.include?(parametro.downcase)
        return true
      end
    end
    false
  end 
end
