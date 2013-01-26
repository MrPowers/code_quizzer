# Questions belong to a quiz and a user
class Question < ActiveRecord::Base
  attr_accessible :answer, :body, :quiz_id, :user_id
  belongs_to :quiz
  belongs_to :user
end
