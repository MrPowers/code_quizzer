require 'rails_helper'

describe StaticPagesController,type: :controller do

  describe "GET 'about'" do
    it "returns http success" do
      response = get :about
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :about
      expect(response).to render_template("about")
    end
  end

end
