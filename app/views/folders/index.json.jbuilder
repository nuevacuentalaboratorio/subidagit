json.array!(@folders) do |folder|
  json.extract! folder, :id, :nombre, :id_padre
  json.url folder_url(folder, format: :json)
end
