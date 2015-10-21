json.array!(@rehabs) do |rehab|
  json.extract! rehab, :id, :enfermedades, :causaInternacion, :tiempoConsumo, :centroAnterior, :nombreCentre, :tiempoEstancia, :motivoRetiro, :observaciones, :interno_id
  json.url rehab_url(rehab, format: :json)
end
