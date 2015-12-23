require 'rails_helper'

RSpec.describe Ability, type: :model do
   it "instance of ChallengeAnswer " do
    expect(Ability.new(FactoryGirl.create(:user))).to be_a_instance_of Ability
   end
   
   it "nil user " do
    expect(Ability.new(nil)).to be_a_instance_of Ability
   end
   
   it "should return author cans" do
     user = User.create email: 'you@example.com', password: 'password', password_confirmation: 'password', username: "username", role: 'author'
     expect(Ability.new(user)).to be_a_instance_of Ability
   end
   
   
end
  