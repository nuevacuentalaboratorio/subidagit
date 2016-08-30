json.array!(@skugraphs) do |skugraph|
  json.extract! skugraph, :id, :sku, :velocidad
  json.url skugraph_url(skugraph, format: :json)
end
