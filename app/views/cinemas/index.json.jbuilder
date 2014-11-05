json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :name, :address_id, :openTime, :closeTime, :key
  json.url cinema_url(cinema, format: :json)
end
