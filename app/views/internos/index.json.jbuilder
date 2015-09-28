json.array!(@internos) do |interno|
  json.extract! interno, :id, :sexo, :estado, :fechaIngreso, :nombre, :apellido1, :apellido2, :ci, :estadoCivil, :lugarNacimiento, :fechaNacimiento, :direccion, :zona, :telefono, :estudios, :profesion, :oficio
  json.url interno_url(interno, format: :json)
end
