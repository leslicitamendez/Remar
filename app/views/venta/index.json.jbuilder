json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :cantidad, :feche, :precioUnidad, :estado, :entregaProducto_id, :rendicionProducto_id
  json.url ventum_url(ventum, format: :json)
end
