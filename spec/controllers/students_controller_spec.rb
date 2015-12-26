require 'rails_helper'

describe UserStatisticsController,type: :controller do

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

end
