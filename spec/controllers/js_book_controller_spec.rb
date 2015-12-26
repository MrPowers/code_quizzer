require 'rails_helper'

describe JsBooksController,type: :controller do
  
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

  describe "GET 'show'" do
    it "returns http success" do
      response = get :show ,:section_name => "importance-of-precise-language"
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :show ,:section_name => "importance-of-precise-language"
      expect(response).to render_template("show")
    end
  end

end
