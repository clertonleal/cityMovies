class Room < ActiveRecord::Base
  has_many :movie_hours
  belongs_to :cinema
end
