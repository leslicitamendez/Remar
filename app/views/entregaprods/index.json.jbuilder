json.array!(@entregaprods) do |entregaprod|
  json.extract! entregaprod, :id, :fecha, :hora, :cantidad, :observaciones, :estado, :voluntario_id, :product_id
  json.url entregaprod_url(entregaprod, format: :json)
end
