require 'rails_helper'

RSpec.describe Family,type: :model do

  context ".exam_counts" do
    it "should return exam count" do
      user = FactoryGirl.create(:user)
      quiz1 = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      quiz2 = Quiz.create!(body: "quiz_body", description: "quiz_description", slug: "quiz_slug", page_title: "quiz_page_title")
      exam1 = Exam.create!(quiz_id:quiz1.id,user_id:user.id,is_graded:0,is_canceled:1)
      exam1 = Exam.create!(quiz_id:quiz2.id,user_id:user.id,is_graded:1,is_canceled:0)
      count = Family.exam_counts(user.id)
      expect(count.size).to eq 2
    end
  end
  
  it { Family.reflect_on_association(:topics).macro.should  eq(:has_many) }

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

