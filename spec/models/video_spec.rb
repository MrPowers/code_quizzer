require 'rails_helper'

RSpec.describe Video, type: :model do

  it "has a valid factory" do
    FactoryGirl.create(:video).should be_valid
  end 

end