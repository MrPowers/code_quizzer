require "spec_helper"

describe Family do
  it "has_many :topics" do
    expect(subject).to have_many(:topics)
  end

  context "#validations" do
    it "raises an exception for really long page titles" do
      page_title = "This is a really long page title that's more than 45 chars"
      expect {
        Family.create!(page_title: page_title)
      }.to raise_error
    end
  end
end

