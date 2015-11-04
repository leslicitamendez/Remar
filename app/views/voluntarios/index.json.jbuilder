json.array!(@voluntarios) do |voluntario|
  json.extract! voluntario, :id, :nombre, :apellido1, :apellido2, :direccion, :NivelConfianza, :telefono, :ci, :sexo
  json.url voluntario_url(voluntario, format: :json)
end
