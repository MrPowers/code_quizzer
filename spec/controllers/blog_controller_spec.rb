require 'rails_helper'

describe BlogsController,type: :controller do
 
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
  
  describe "GET 'contact'" do
    it "returns http success" do
      response = get :contact 
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :contact 
      expect(response).to render_template("contact")
    end
  end
  
  describe "GET 'font_awesome'" do
    it "returns http success" do
      response = get :font_awesome 
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :font_awesome 
      expect(response).to render_template("font_awesome")
    end
  end
  
  describe "GET 'learning_vim'" do
    it "returns http success" do
      response = get :learning_vim 
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :learning_vim 
      expect(response).to render_template("learning_vim")
    end
  end

end
