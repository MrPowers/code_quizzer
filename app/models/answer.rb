class Answer < ActiveRecord::Base
  attr_accessible :exam_id, :question_id, :status, :is_correct
  belongs_to :question
  belongs_to :exam
end
