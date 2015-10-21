json.array!(@produccions) do |produccion|
  json.extract! produccion, :id, :estado, :fecha_produccion, :fecha_vencimiento, :product_id
  json.url produccion_url(produccion, format: :json)
end
