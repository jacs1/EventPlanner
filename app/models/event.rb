class Event < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :name, :image
  geocoded_by :address
  after_validation :geocode

  has_attached_file :image, presence: true,
  													size: { less_than: 5.megabytes },
  													styles: { medium: "320x240" }

  belongs_to :user
  has_many :comments
end
