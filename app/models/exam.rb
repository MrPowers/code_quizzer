class Exam < ActiveRecord::Base
  attr_accessible :quiz_id, :user_id, :is_graded, :is_canceled
  has_many :answers, :dependent => :destroy
  belongs_to :quiz
  belongs_to :user

  def percent_correct
    correct_answers_count.to_f / questions.count
  end

  def correct_answers_count
    Answer.where(exam_id: id, is_correct: true).count
  end

  def incorrect_answers_count
    Answer.where(exam_id: id, is_correct: false).count
  end

  def blank_answers_count
    questions.count - correct_answers_count - incorrect_answers_count
  end

  def self.status_counts(user_id)
    records = Exam.where(:user_id => user_id).select(%q{
      quiz_id,
      sum(case when is_graded then 1 else 0 end) graded,
      sum(case when is_canceled then 1 else 0 end) canceled,
      sum(case when is_graded IS NULL and is_canceled IS NULL then 1 else 0 end) in_progress
    }).group("quiz_id")
    records.inject({}) {|m, h| m[h["quiz_id"]] = h.attributes; m}
  end

  private

  def questions
    quiz.questions
  end

end
