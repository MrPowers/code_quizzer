require 'rails_helper'

RSpec.describe Student,type: :model do
  
  context "associations" do
    it { Student.reflect_on_association(:user).macro.should  eq(:belongs_to) }
  end

   context "#fullname" do
    it "frame fullname" do
      expect(FactoryGirl.create(:student).full_name).to eq "fname lname"
    end
  end
  
  context "#slug" do
    it "parameterizes the slug" do
      expect(FactoryGirl.create(:student).slug).to eq "fname-lname"
    end
  end

end