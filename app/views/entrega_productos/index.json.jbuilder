json.array!(@entrega_productos) do |entrega_producto|
  json.extract! entrega_producto, :id, :fecha, :hora, :cantidad, :estado, :product_id, :voluntario_id
  json.url entrega_producto_url(entrega_producto, format: :json)
end
