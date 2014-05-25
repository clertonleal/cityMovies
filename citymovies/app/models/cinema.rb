class Cinema < ActiveRecord::Base
  belongs_to :address
  has_many :cinema_movies
  has_many :rooms
  has_many :movies, through: :cinema_movies
  validates :sunday, :monday, :tuesday, :wednesday, :thursday, :friday,:saturday, :numericality => {:greater_than => 0}
end
