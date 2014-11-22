class Question < ActiveRecord::Base
  attr_accessible :answer, :body, :quiz_id
  belongs_to :quiz
end
