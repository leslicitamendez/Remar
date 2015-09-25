json.array!(@recepcion_donativos) do |recepcion_donativo|
  json.extract! recepcion_donativo, :id, :fecha, :nombreDonante, :articulo, :cantidad, :descripcion, :id_voluntario
  json.url recepcion_donativo_url(recepcion_donativo, format: :json)
end
