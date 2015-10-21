json.array!(@historia_clinicas) do |historia_clinica|
  json.extract! historia_clinica, :id, :enfermedades, :causa_internacion, :observaciones, :interno_id
  json.url historia_clinica_url(historia_clinica, format: :json)
end
