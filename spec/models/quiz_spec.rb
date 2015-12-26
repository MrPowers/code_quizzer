require 'rails_helper'

RSpec.describe Quiz,type: :model do

  context "associations" do
    it { Quiz.reflect_on_association(:topic).macro.should  eq(:belongs_to) }
    it { Quiz.reflect_on_association(:videos).macro.should eq(:has_many) }
    it { Quiz.reflect_on_association(:exams).macro.should eq(:has_many) }
    it { Quiz.reflect_on_association(:comments).macro.should eq(:has_many) }
    it { Quiz.reflect_on_association(:questions).macro.should eq(:has_many) }
  end

   context "#to_param" do
    it "parameterizes the slug" do
      expect(FactoryGirl.create(:quiz).to_param).to eq "some-slug-dude"
    end
  end

end
