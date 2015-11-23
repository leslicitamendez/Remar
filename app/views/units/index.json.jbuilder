json.array!(@units) do |unit|
  json.extract! unit, :id, :unidad
  json.url unit_url(unit, format: :json)
end
