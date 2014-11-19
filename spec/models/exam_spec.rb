require 'spec_helper'

describe Exam do

  context "associations" do
    it "should belong_to :quiz" do
      expect(subject).to belong_to :quiz
    end

    it "should belong_to :user" do
      expect(subject).to belong_to :user
    end

    it "has_many :answers" do
      expect(subject).to have_many :answers
    end
  end

  def percent_correct
    correct_answers_count.to_f / questions.count
  end

  # need to add a database cleaner
  #context "#percent_correct" do
    #it "calculates the percent of correct answers in an exam" do
      #quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      #question1 = quiz.questions.create!(body: "question1_body", answer: "question1_answer")
      #question2 = quiz.questions.create!(body: "question2_body", answer: "question2_answer")
      #question3 = quiz.questions.create!(body: "question3_body", answer: "question3_answer")
      #exam = Exam.new(quiz_id: quiz.id, status: "graded")
      #Answer.create!(exam_id: exam.id, question_id: question1.id, status: "correct")
      #Answer.create!(exam_id: exam.id, question_id: question2.id, status: "incorrect")
      #binding.pry
      #expect(exam.percent_correct).to be_within(0.01).of 0.33
    #end
  #end

end
