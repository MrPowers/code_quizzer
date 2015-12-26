require 'rails_helper'

describe ChallengesController,type: :controller do
  include Devise::TestHelpers
  before(:each) do
    user = FactoryGirl.create(:user)
    ability=Ability.new(user)
    allow(controller).to receive(:current_user).and_return(user)
  end
  
  describe "GET 'new'" do
    it "returns http success" do
      response = get :new 
      expect(response).to be_success
    end
  end
 
  describe "GET 'index'" do
    it "returns http success" do
      response = get :index 
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :index 
      expect(response).to render_template("index")
    end
  end
  
  describe "GET 'Show'" do
    it "returns http success" do
      @challenge = FactoryGirl.create(:challenge)
      response = get :show,:id => @challenge.id
      expect(response).to be_success
    end
  end
  
 describe "Post 'create'" do
    it "returns http success" do
      response = post :create ,challenge:{question:"q",answer:"a",question_summary:"qs",answer_description:"ad"}
      expect(response).to have_http_status(302)
    end
  end
  
  describe "get 'edit'" do
    it "returns http success" do
      @challenge = FactoryGirl.create(:challenge)
      response = get :edit ,:id => @challenge.id
      expect(response).to be_success
    end
  end
  
   describe "put 'update'" do
    it "returns http success" do
      @challenge = FactoryGirl.create(:challenge)
      response = put :update ,:id => @challenge.slug,challenge:{question:"q",answer:"a",question_summary:"qs",answer_description:"ad"}
      expect(response).to have_http_status(302)
    end
  end
  
  describe "check 'answer'" do
    it "returns http success" do
      @challenge = FactoryGirl.create(:challenge)
      response = get :answer ,:id => @challenge.id
      expect(response).to be_success
    end
  end
  
  describe "challenge check 'answer'" do
    it "returns  success for correct answer" do
      @challenge = FactoryGirl.create(:challenge)
      response = post :check_answer ,:id => @challenge.slug,:challenge_answer => "answer"
      expect(response).to have_http_status(302)
    end
  end
  
  describe "challenge check 'answer'" do
    it "returns error for wrong answer" do
      @challenge = FactoryGirl.create(:challenge)
      response = post :check_answer ,:id => @challenge.slug,:challenge_answer => "a"
      expect(response).to have_http_status(302)
    end
  end

end
