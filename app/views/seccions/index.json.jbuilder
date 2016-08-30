json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :nombre, :url
  json.url seccion_url(seccion, format: :json)
end
