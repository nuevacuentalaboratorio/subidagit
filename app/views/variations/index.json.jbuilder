json.array!(@variations) do |variation|
  json.extract! variation, :id, :name
  json.url variation_url(variation, format: :json)
end
