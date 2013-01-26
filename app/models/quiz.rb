# Quizzes belong to a user and a topic
class Quiz < ActiveRecord::Base
  attr_accessible :body, :user_id, :description, :topic_id
  has_many :questions, :dependent => :destroy
  belongs_to :user
  belongs_to :topic
end
