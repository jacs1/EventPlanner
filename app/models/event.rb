class Event < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :name, :image
  has_attached_file :image, presence: true

  belongs_to :user
end
