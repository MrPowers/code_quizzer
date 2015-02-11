require "spec_helper"

describe Family do

  context ".exam_counts" do
    pending
  end

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

    it "raises exceptions if the slug isn't present" do
      expect {
        Family.create!(page_title: "page_title")
      }.to raise_error
    end
  end

  context "#to_param" do
    it "parameterizes the slug" do
      f = Family.create!(page_title: "page_title", slug: "some slug Dude")
      expect(f.to_param).to eq "some-slug-dude"
    end
  end

end

