class Conyugue < ActiveRecord::Base
	belongs_to :interno
	before_save :default_values
  def default_values
    self.estado ||= 'true'
  end
end
