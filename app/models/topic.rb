class Topic < ActiveRecord::Base
  attr_accessible :name, :user_id
  has_many :quizzes
  belongs_to :user
end
