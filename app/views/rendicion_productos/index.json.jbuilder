json.array!(@rendicion_productos) do |rendicion_producto|
  json.extract! rendicion_producto, :id, :fecha, :hora, :cantidad, :observaciones, :estado, :Product_id, :Voluntario_id
  json.url rendicion_producto_url(rendicion_producto, format: :json)
end
