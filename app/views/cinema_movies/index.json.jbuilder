json.array!(@cinema_movies) do |cinema_movie|
  json.extract! cinema_movie, :id, :cinema_id, :movie_id
  json.url cinema_movie_url(cinema_movie, format: :json)
end
