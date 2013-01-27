class Family < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :topics
end
