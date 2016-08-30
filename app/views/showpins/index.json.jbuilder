json.array!(@showpins) do |showpin|
  json.extract! showpin, :id, :nota
  json.url showpin_url(showpin, format: :json)
end
