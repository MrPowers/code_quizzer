require 'rails_helper'

describe CommentsController,type: :controller do

  describe "POST 'Create'" do
    it "returns http success" do 
      user = FactoryGirl.create(:user)
      ability=Ability.new(user)
      allow(controller).to receive(:current_user).and_return(user)
      topic = Topic.create! name: 'Rails Topic', slug: 'topic-slug', family_id: 1
      quiz = topic.quizzes.create! body: 'MVC Quiz', slug: 'quiz-slug', description: 'A first quiz', page_title: 'a quiz page title'
      response = post :create,:quiz_id => quiz.slug,:comment=>{:body=>"body"}
      # the rersponse is used to redirect
      expect(response).to have_http_status(302)
    end
  end

end
