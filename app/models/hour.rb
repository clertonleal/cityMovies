class Hour < ActiveRecord::Base
  belongs_to :movie
  belongs_to :room
end
