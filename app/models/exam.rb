class Exam < ActiveRecord::Base
  attr_accessible :quiz_id, :status, :user_id
  has_many :answers
  belongs_to :quiz

  def create_answers
    quiz.questions.each do |question|
      self.answers.create(:question_id => question.id, :status => "unanswered")
    end
  end
end
