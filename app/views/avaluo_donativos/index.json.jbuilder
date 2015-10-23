json.array!(@avaluo_donativos) do |avaluo_donativo|
  json.extract! avaluo_donativo, :id, :montoBs, :observacion
  json.url avaluo_donativo_url(avaluo_donativo, format: :json)
end
