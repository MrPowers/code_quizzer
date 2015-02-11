require "spec_helper"

describe Question do

  it "belongs_to :quiz" do
    expect(subject).to belong_to(:quiz)
  end

end

