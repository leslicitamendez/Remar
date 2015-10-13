json.array!(@contacts) do |contact|
  json.extract! contact, :id, :sexo, :nombre, :apellido1, :apellido2, :ci, :telefono, :direccion
  json.url contact_url(contact, format: :json)
end
