require 'rails_helper'

describe FamiliesController,type: :controller do
 include Devise::TestHelpers
 before(:each) do
   family = FactoryGirl.create(:family)
 end
  describe "GET 'show'" do
    it "returns http success" do
      response = get :show ,:id => "learn-programming"
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :show ,:id => "learn-programming"
      expect(response).to render_template("show")
    end
  end

end
