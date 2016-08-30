json.array!(@teams) do |team|
  json.extract! team, :id, :nombre, :cargo, :empresa, :telefono, :email
  json.url team_url(team, format: :json)
end
