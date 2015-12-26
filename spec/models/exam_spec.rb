require 'rails_helper'

RSpec.describe Exam,type: :model do

  context "associations" do
    it { Exam.reflect_on_association(:quiz).macro.should  eq(:belongs_to) }
    it { Exam.reflect_on_association(:user).macro.should eq(:belongs_to) }
    it { Exam.reflect_on_association(:answers).macro.should eq(:has_many) }
    
    # it "should belong_to :quiz" do
      # expect(subject).to belong_to :quiz
    # end
 
    # it "should belong_to :user" do
      # expect(subject).to belong_to :user
    # end
 
    # it "has_many :answers" do
      # expect(subject).to have_many :answers
    # end
  end

  context "#percent_correct" do
    it "calculates the percent of correct answers in an exam" do
      quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      question1 = quiz.questions.create!(body: "question1_body", answer: "question1_answer")
      question2 = quiz.questions.create!(body: "question2_body", answer: "question2_answer")
      question3 = quiz.questions.create!(body: "question3_body", answer: "question3_answer")
      exam = Exam.new(quiz_id: quiz.id,user_id:1,is_graded:true,is_canceled:false)
      Answer.create!(exam_id: exam.id, question_id: question1.id, is_correct: true)
      Answer.create!(exam_id: exam.id, question_id: question2.id, is_correct: false)
      expect(exam.percent_correct).to eq 0.3333333333333333
      expect(exam.incorrect_answers_count).to eq 1
      expect(exam.blank_answers_count).to eq 1
    end
  end

end
