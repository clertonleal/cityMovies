class Photo < ActiveRecord::Base
  belongs_to :movie
  has_attached_file :image_url, :styles => { large: '500x500', medium: '300x300>', thumb: '100x100>' }, default_url: '/images/no-found.gif'
  validates_attachment :image_url, :presence => true,:content_type => { content_type: /\Aimage\/.*\Z/ }, size: { in: 0..2000.kilobytes }
end
