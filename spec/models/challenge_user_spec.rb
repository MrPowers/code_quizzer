require 'rails_helper'

RSpec.describe ChallengeUser, type: :model do

  it { ChallengeUser.reflect_on_association(:user).macro.should  eq(:belongs_to) }
  it { ChallengeUser.reflect_on_association(:challenge).macro.should eq(:belongs_to) }
  # it "belongs_to :user" do
    # expect(subject).to belong_to(:user)
  # end
  # it "belongs_to :challenge" do
    # expect(subject).to belong_to(:challenge)
  # end

end

