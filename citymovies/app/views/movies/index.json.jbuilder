json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :synopsis, :age, :cover, :duration_in_minutes, :director, :gender
  json.url movie_url(movie, format: :json)
end
