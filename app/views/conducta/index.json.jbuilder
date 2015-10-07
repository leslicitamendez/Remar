json.array!(@conducta) do |conductum|
  json.extract! conductum, :id, :estado, :fecha, :descripcion, :tipoConducta
  json.url conductum_url(conductum, format: :json)
end
