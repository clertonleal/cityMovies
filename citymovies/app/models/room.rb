class Room < ActiveRecord::Base
  has_many :hours
  belongs_to :cinema
end
