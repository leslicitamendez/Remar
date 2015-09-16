json.array!(@gasto_internos) do |gasto_interno|
  json.extract! gasto_interno, :id, :fecha, :concepto, :descripcion, :monto, :interno_id
  json.url gasto_interno_url(gasto_interno, format: :json)
end
