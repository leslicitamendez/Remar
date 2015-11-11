json.array!(@cities) do |city|
  json.extract! city, :id, :nombre, :estado
  json.url city_url(city, format: :json)
end
