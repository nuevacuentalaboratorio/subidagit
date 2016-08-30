json.array!(@archivos) do |archivo|
  json.extract! archivo, :id, :nombre, :autor
  json.url archivo_url(archivo, format: :json)
end
