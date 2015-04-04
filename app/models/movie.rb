class Movie < ActiveRecord::Base
  has_many :photos
  has_many :videos
  has_many :actors
  has_many :cinema_movies
  has_many :cinemas, through: :cinema_movies

  def coverUrl
    self.cover_url
  end

  def as_json(options={})
    {
        id: self.id,
        title: self.title,
        synopsis: self.synopsis,
        minimumAge: self.minimumAge,
        durationInMinutes: self.durationInMinutes,
        director: self.director,
        gender: self.gender,
        coverUrl: self.cover_url,
        imdbLink: self.imdbLink,
        youtubeLink: self.youtubeLink
    }
  end
end
