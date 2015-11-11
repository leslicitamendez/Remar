class AddVoluntarioToCita < ActiveRecord::Migration
  def change
    add_reference :cita, :voluntario, index: true
  end
end
