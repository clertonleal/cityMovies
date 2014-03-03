json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :number, :city, :country, :state, :cep
  json.url address_url(address, format: :json)
end
