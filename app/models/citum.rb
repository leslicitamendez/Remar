class Citum < ActiveRecord::Base
	validates :ubicación, presence: {:message => "- La ubicaion es un campo obligatorio"}
	validates_date :fecha, :on => :create, :after => :today, :after_message => 'solo se programaran citas para el dia siguiente'
	validates_time :hora, :between => ['9:00am', '5:00pm'], :on_or_after_message =>"solo se atiende entre 9:00am y 5:00pm",:on_or_before_message =>"solo se atiende entre 9:00am y 5:00pm" # On or after 9:00AM and on or before 5:00PM
	validates :nombreDonante, presence: {:message => "- el nombre es un campo obligatorio"}

end
