require 'rails_helper'

describe StudentWebpagesController,type: :controller do
  
  before(:each) do
    @student = FactoryGirl.create(:student)
    @stu_web_page = StudentWebpage.create! name: 'user name', student_id: @student.id
  end

  describe "GET 'show'" do
    it "returns http success" do
      response = get :show ,:id =>@stu_web_page.id ,:student_id => @student.id
      expect(response).to be_success
    end
    
    it "render page " do
      response = get :show ,:id =>@stu_web_page.id ,:student_id => @student.id
      expect(response).to render_template("show")
    end
  end

end
