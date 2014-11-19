require "spec_helper"

describe Comment do
  it "belongs_to :user" do
    expect(subject).to belong_to(:user)
  end
end
