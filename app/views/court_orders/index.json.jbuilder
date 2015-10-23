json.array!(@court_orders) do |court_order|
  json.extract! court_order, :id, :descripcion, :estado, :interno_id
  json.url court_order_url(court_order, format: :json)
end
