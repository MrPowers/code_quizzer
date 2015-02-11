require "spec_helper"

describe ChallengeUser do

  it "belongs_to :user" do
    expect(subject).to belong_to(:user)
  end

  it "belongs_to :challenge" do
    expect(subject).to belong_to(:challenge)
  end

end

