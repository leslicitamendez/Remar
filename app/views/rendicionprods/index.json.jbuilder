json.array!(@rendicionprods) do |rendicionprod|
  json.extract! rendicionprod, :id, :fecha, :hora, :cantidad, :observaciones, :estado, :entregaprod_id
  json.url rendicionprod_url(rendicionprod, format: :json)
end
