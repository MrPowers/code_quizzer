class Exam < ActiveRecord::Base
  attr_accessible :quiz_id, :status, :user_id, :correct_answers, :incorrect_answers, :unanswered_questions
  has_many :answers, :dependent => :destroy
  belongs_to :quiz
  belongs_to :user

  def percent_correct
    correct_answers_count.to_f / questions.count
  end

  def correct_answers_count
    Answer.where(exam_id: id, status: "correct").count
  end

  def incorrect_answers_count
    Answer.where(exam_id: id, status: "incorrect").count
  end

  def blank_answers_count
    questions.count - correct_answers_count - incorrect_answers_count
  end

  private

  def questions
    quiz.questions
  end

end
