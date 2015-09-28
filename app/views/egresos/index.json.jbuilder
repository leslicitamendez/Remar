json.array!(@egresos) do |egreso|
  json.extract! egreso, :id, :estado, :monto, :fecha
  json.url egreso_url(egreso, format: :json)
end
