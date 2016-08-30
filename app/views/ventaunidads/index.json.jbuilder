json.array!(@ventaunidads) do |ventaunidad|
  json.extract! ventaunidad, :id, :mes, :valor
  json.url ventaunidad_url(ventaunidad, format: :json)
end
