require 'spec_helper'

describe AnswersController, type: :controller do
  before(:each) do
    user = FactoryGirl.create(:user)
    ability=Ability.new(user)
    allow(controller).to receive(:current_user).and_return(user)
  end
 
  
   describe "POST 'set_answer_status'" do
    it "returns http success" do
      quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      question1 = quiz.questions.create!(body: "question1_body", answer: "question1_answer")
      exam = Exam.create!(quiz_id: quiz.id,user_id:1,is_graded:true,is_canceled:false)
      answer=Answer.create!(exam_id: exam.id, question_id: question1.id, is_correct: true)
      response = post :set_answer_status, :exam_id => exam.id, :question_id => question1.id, :is_correct =>answer.is_correct,format: :json
      expect(response).to be_success
    end
    
    it "returns http success" do
      quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      question1 = quiz.questions.create!(body: "question1_body", answer: "question1_answer")
      exam = Exam.create!(quiz_id: quiz.id,user_id:1,is_graded:true,is_canceled:false)
      response = post :set_answer_status,format: :json
      expect(response).to be_success
    end
  end
  
end
