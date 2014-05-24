class Movie < ActiveRecord::Base
  has_many :photos
  has_many :videos
  has_many :actors
  has_many :cinema_movies
  has_many :cinemas, through: :cinema_movies
  has_many :rooms
  has_attached_file :cover, :styles => { large: '500x500', medium: '300x300>', thumb: '100x100>' }, default_url: '/images/no-found.gif'
  validates_attachment :cover, :presence => true,:content_type => { content_type: /\Aimage\/.*\Z/ }, size: { in: 0..2000.kilobytes }
end
