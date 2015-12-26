require 'rails_helper'

describe QuestionsController,type: :controller do
 include Devise::TestHelpers
 
 before(:each) do
   user = FactoryGirl.create(:user)
   ability = Ability.new(user)
   allow(controller).to receive(:current_user).and_return(user)
   family = FactoryGirl.create(:family)
   @topic = family.topics.create! name: 'Rails Topic', slug: 'topic-slug', family_id: family.id
   @quiz = @topic.quizzes.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
 end
  describe "Post 'create'" do
    it "returns http success" do
      response = post :create ,:quiz_id=>@quiz.slug,question:{body: "question2_body", answer: "question2_answer"}
      expect(response).to have_http_status(302)
    end
  end
  
  describe "get 'edit'" do
    it "returns http success" do
      question2 = @quiz.questions.create!(body: "question2_body", answer: "question2_answer")
      response = get :edit ,:quiz_id=>@quiz.id,:id => question2.id
      expect(response).to be_success
    end
  end
  
   describe "put 'update'" do
    it "returns http success" do
      question2 = @quiz.questions.create!(body: "question2_body", answer: "question2_answer")
      response = put :update ,:quiz_id=>@quiz.slug,:id=>question2.id,question:{body: "question2_body_update", answer: "question2_answer"}
      expect(response).to have_http_status(302)
    end
  end
  
  describe "delete 'destroy'" do
    it "returns http success" do
      question2 = @quiz.questions.create!(body: "question2_body", answer: "question2_answer")
      response = delete :destroy ,:quiz_id=>@quiz.slug,:id => question2.id
      expect(response).to have_http_status(302)
    end
  end

end