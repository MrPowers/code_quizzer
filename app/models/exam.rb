class Exam < ActiveRecord::Base
  attr_accessible :quiz_id, :status, :user_id
  has_many :answers
  belongs_to :quiz
end
