class Movie < ActiveRecord::Base
  has_many :photos
  has_many :videos
  has_many :actors
  has_many :cinema_movies
  has_many :cinemas, through: :cinema_movies
end
