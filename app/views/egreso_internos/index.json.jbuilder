json.array!(@egreso_internos) do |egreso_interno|
  json.extract! egreso_interno, :id, :concepto, :monto, :observaciones, :fecha, :interno_id, :egreso_id
  json.url egreso_interno_url(egreso_interno, format: :json)
end
