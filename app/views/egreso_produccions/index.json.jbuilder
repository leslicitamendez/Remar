json.array!(@egreso_produccions) do |egreso_produccion|
  json.extract! egreso_produccion, :id, :observaciones, :egreso_id, :produccion_id
  json.url egreso_produccion_url(egreso_produccion, format: :json)
end
