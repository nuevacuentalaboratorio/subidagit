json.array!(@channels) do |channel|
  json.extract! channel, :id, :nombre, :porcentaje, :dias, :skus, :reviews, :revision
  json.url channel_url(channel, format: :json)
end
