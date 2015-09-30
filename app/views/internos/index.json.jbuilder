json.array!(@internos) do |interno|
  json.extract! interno, :id, :nombre, :apellido1, :apellido2, :sexo, :ci, :estadoCivil, :direccion, :zona, :telefono, :fechaNacimiento, :lugarNacimiento, :estudios, :profesion, :oficio, :fechaIngreso
  json.url interno_url(interno, format: :json)
end
