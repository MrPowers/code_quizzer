require 'rails_helper'

describe QuizzesController,type: :controller do
 include Devise::TestHelpers
 
 before(:each) do
   family = FactoryGirl.create(:family)
   @topic = family.topics.create! name: 'Rails Topic', slug: 'topic-slug', family_id: family.id
   @quiz = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
   user = FactoryGirl.create(:user)
   ability=Ability.new(user)
   allow(controller).to receive(:current_user).and_return(user)
   question1 = @quiz.questions.create!(body: "question1_body", answer: "question1_answer")
   question2 = @quiz.questions.create!(body: "question2_body", answer: "question2_answer")
 end
  describe "GET 'show'" do
    it "returns http success" do
      response = get :show ,:topic_id => @topic.id, :id=>@quiz.slug
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :show ,:topic_id => @topic.id, :id=>@quiz.slug
      expect(response).to render_template("show")
    end
  end

end
