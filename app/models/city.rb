class City < ActiveRecord::Base

	def ciudad_name
  "#{self.nombre} #{self.estado}"

	end
end
