class HistoriaClinica < ActiveRecord::Base
  belongs_to :interno

  validates :enfermedades, presence: {:message => "- Es un campo obligatorio"}
  #validates :enfermedades, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}

  validates :causa_internacion, presence: {:message => "- Es un campo obligatorio"}
  #validates :causa_internacion, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"}

  #validates :observaciones, presence: {:message => "- Es un campo obligatorio"}
  #validates :observaciones, format: { with: /\A[a-zA-Z]+\z/, message: "- Solo se aceptan letras"} 

  def self.search(search)
		if search
			where('interno_id like ?', "%#{search}%")
		else
			scoped
		end
	end 
end
