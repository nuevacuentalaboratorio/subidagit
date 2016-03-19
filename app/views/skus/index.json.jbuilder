json.array!(@skus) do |sku|
  json.extract! sku, :id, :productid, :sku, :variant1, :variant2, :variant3, :ean, :retailprice, :saleprice, :cost, :inv, :classification, :brand, :weight
  json.url sku_url(sku, format: :json)
end
