json.array!(@stocks) do |stock|
  json.extract! stock, :id, :produccions_id, :cantidad
  json.url stock_url(stock, format: :json)
end
