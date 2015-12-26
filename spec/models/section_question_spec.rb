require 'rails_helper'

RSpec.describe SectionQuestion, type: :model do
  
  it "instance of SectionQuestion " do
    expect(SectionQuestion.new).to be_a_instance_of SectionQuestion
  end 
    
  it "has a valid factory" do
    FactoryGirl.create(:section_question).should be_valid
  end 

end