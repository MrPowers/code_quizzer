class Exam < ActiveRecord::Base
  attr_accessible :quiz_id, :status, :user_id, :correct_answers, :incorrect_answers, :unanswered_questions
  has_many :answers
  belongs_to :quiz

  def grade
    attributes = self.quiz.questions.inject(Hash.new(0)) do |memo, question|
      answer = Answer.where(:exam_id => self.id, :question_id => question.id).first
      if answer.blank?
        memo[:unanswered_questions] += 1
      elsif answer.status == "right"
        memo[:correct_answers] += 1
      elsif answer.status == "wrong"
        memo[:incorrect_answers] += 1
      end
      memo
    end
    self.update_attributes(attributes.merge({:status => "graded"}))
  end

end
