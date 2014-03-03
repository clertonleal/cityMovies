json.array!(@videos) do |video|
  json.extract! video, :id, :movie_id, :video_url
  json.url video_url(video, format: :json)
end
