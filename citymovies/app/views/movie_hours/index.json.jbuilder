json.array!(@movie_hours) do |movie_hour|
  json.extract! movie_hour, :id, :hour, :room_id
  json.url movie_hour_url(movie_hour, format: :json)
end
