json.array!(@brandteams) do |brandteam|
  json.extract! brandteam, :id, :nombre, :cargo, :empresa, :telefono, :email
  json.url brandteam_url(brandteam, format: :json)
end
