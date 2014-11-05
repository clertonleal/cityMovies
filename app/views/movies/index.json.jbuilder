json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :synopsis, :minimumAge, :durationInMinutes, :director, :gender, :coverUrl
  json.url movie_url(movie, format: :json)
end
