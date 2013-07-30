class Comment < ActiveRecord::Base
  attr_accessible :body

  belongs_to :event
  belongs_to :user
end
