json.array!(@internos) do |interno|
  json.extract! interno, :id, :fechaIngreso, :nombres, :apellidoPaterno, :apellidoMaterno, :ci, :estadoCivil, :edad, :conyugue, :numeroDHijos, :lugarDNacimiento, :fechaDNacimiento, :direccion, :zona, :telefono, :referencias, :estudios, :profesionUOficio, :enfermedades, :causaInternacion, :tiempoDConsumo, :centroAnterior, :tiempoEstancia, :motivoDRetiro, :ordenJudicial, :observaciones
  json.url interno_url(interno, format: :json)
end
