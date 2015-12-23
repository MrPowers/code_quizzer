require 'rails_helper'

RSpec.describe Topic, type: :model do
  
  it { Topic.reflect_on_association(:quizzes).macro.should  eq(:has_many) }
  it { Topic.reflect_on_association(:family).macro.should eq(:belongs_to) }

   context "#slug" do
    it "parameterizes the slug" do
      expect(FactoryGirl.create(:topic).to_param).to eq "fname-lname"
    end
  end
 
end