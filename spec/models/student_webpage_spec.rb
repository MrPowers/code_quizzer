require 'rails_helper'

RSpec.describe StudentWebpage,type: :model do
  
  context "associations" do
    it { StudentWebpage.reflect_on_association(:student).macro.should  eq(:belongs_to) }
  end

   context "#slug" do
    it "parameterizes the slug" do
      expect(FactoryGirl.create(:student_webpage).slug).to eq "name-slug"
    end
  end

end