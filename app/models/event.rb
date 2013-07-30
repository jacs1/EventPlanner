class Event < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :name

  belongs_to :user
end
