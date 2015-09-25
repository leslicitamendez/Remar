json.array!(@cita) do |citum|
  json.extract! citum, :id, :fecha, :hora, :ubicación, :nombreDonante, :descripcionDonacion
  json.url citum_url(citum, format: :json)
end
