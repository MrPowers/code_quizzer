require 'rails_helper'

RSpec.describe ChallengeAnswer, type: :model do
  
  it "instance of ChallengeAnswer " do
    expect(ChallengeAnswer.new).to be_a_instance_of ChallengeAnswer
  end 

  it "has a valid factory" do
    FactoryGirl.create(:challenge_answer).should be_valid
  end 

end