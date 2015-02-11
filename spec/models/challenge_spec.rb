require 'spec_helper'

describe Challenge do

  context "associations" do
    it 'has_many challenge_users' do
      expect(subject).to have_many :challenge_users
    end

    it 'should have_many :users' do
      expect(subject).to have_many :users
    end
  end

  context "after_save" do
    it "updates the slug" do
      c = Challenge.create!(question_summary: "This is the question summary")
      expect(c.slug).to eq "this-is-the-question-summary"
    end
  end

  context "#to_param" do
    it "parameterizes the slug" do
      c = Challenge.create!(question_summary: "This is the question summary")
      expect(c.to_param).to eq "this-is-the-question-summary"
    end
  end

end

