require 'spec_helper'

describe ExamsController, type: :controller do
  include Devise::TestHelpers
  before(:each) do
    user = FactoryGirl.create(:user)
    ability=Ability.new(user)
    allow(controller).to receive(:current_user).and_return(user)
    family = FactoryGirl.create(:family)
    @quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
    question1 = @quiz.questions.create!(body: "question1_body", answer: "question1_answer")
    @exam = Exam.create!(quiz_id: @quiz.id,user_id:user.id,is_graded:true,is_canceled:false)
  end
  
  describe "#grade_exam" do
    it "returns http success" do
      response = post :grade_exam ,:id => @exam.id,format: :json
      expect(response).to be_success
    end
  end
  
  describe "#cancel_exam" do
    it "returns http success" do
      response = post :cancel_exam ,:quiz_id => @quiz.id,format: :json
      expect(response).to be_success
    end
  end
  
  describe "#index" do
    it "returns http success" do
      response = get :index 
      expect(response).to be_success
    end
  end
  
  describe "#userexams" do
    it "returns http success" do
      response = get :user_exams 
      expect(response).to be_success
    end
  end
  
  # describe "#grade count" do
    # it "returns http success" do
      # response = get :graded_count,format: :json
      # expect(response).to be_success
    # end
  # end
#   
  # describe "#grad count" do
    # it "returns http success" do
      # current_user = nil
      # response = get :graded_count ,format: :json
      # expect(response).to be_success
    # end
  # end
  
  
end
