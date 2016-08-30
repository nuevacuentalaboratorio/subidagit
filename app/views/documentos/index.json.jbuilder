json.array!(@documentos) do |documento|
  json.extract! documento, :id, :nombre, :autor
  json.url documento_url(documento, format: :json)
end
