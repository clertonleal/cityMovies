json.array!(@hours) do |hour|
  json.extract! hour, :id, :hour, :cinema_id, :movie_id
  json.url hour_url(hour, format: :json)
end
