json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :tags, :images, :size, :color, :inventory, :price, :sku
  json.url product_url(product, format: :json)
end
