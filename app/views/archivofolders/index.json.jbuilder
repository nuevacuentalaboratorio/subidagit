json.array!(@archivofolders) do |archivofolder|
  json.extract! archivofolder, :id, :nombre, :autor
  json.url archivofolder_url(archivofolder, format: :json)
end
