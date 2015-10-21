json.array!(@hijos) do |hijo|
  json.extract! hijo, :id, :estado, :sexo, :nombre, :apellido1, :apellido2, :ci, :fechaNacimiento, :lugarNacimiento
  json.url hijo_url(hijo, format: :json)
end
