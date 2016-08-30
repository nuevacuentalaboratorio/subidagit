json.array!(@showrooms) do |showroom|
  json.extract! showroom, :id, :modulo, :direccion, :horario, :telefono
  json.url showroom_url(showroom, format: :json)
end
