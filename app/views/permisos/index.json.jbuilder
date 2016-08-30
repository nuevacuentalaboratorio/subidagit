json.array!(@permisos) do |permiso|
  json.extract! permiso, :id
  json.url permiso_url(permiso, format: :json)
end
