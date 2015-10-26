json.array!(@ventaprods) do |ventaprod|
  json.extract! ventaprod, :id, :cantidad, :fecha, :precioUnidad, :estado, :observaciones, :rendicionprod_id, :entregaprod_id
  json.url ventaprod_url(ventaprod, format: :json)
end
