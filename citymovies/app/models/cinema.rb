class Cinema < ActiveRecord::Base
  belongs_to :address
  has_many :cinema_movies
  has_many :movies, through: :cinema_movies
end
