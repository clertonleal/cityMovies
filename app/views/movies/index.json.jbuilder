json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :synopsis, :minimumAge, :cover, :durationInMinutes, :director, :gender
  json.url movie_url(movie, format: :json)
end
