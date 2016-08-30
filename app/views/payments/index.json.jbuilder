json.array!(@payments) do |payment|
  json.extract! payment, :id, :anual, :ultimomes, :porcentaje
  json.url payment_url(payment, format: :json)
end
