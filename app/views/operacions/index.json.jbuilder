json.array!(@operacions) do |operacion|
  json.extract! operacion, :id, :nombre
  json.url operacion_url(operacion, format: :json)
end
