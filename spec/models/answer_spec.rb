require 'rails_helper'

RSpec.describe Answer, type: :model do
  
  it { Answer.reflect_on_association(:question).macro.should  eq(:belongs_to) }
  it { Answer.reflect_on_association(:exam).macro.should eq(:belongs_to) }
  
  it "has a valid factory" do
    FactoryGirl.create(:answer).should be_valid
  end
  
  # it 'should belong_to :question' do
    # expect(subject).to belong_to :question
  # end
# 
  # it 'should belong_to :exam' do
    # expect(subject).to belong_to :exam
  # end
end
