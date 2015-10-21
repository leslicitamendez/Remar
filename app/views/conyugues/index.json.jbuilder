json.array!(@conyugues) do |conyugue|
  json.extract! conyugue, :id, :estado, :nombre, :apellido1, :apellido2, :ci, :lugarNacimiento, :fechaNacimiento, :telefono, :direccion
  json.url conyugue_url(conyugue, format: :json)
end
