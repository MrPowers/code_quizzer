require 'spec_helper'

describe Answer do
  it 'should belong_to :question' do
    expect(subject).to belong_to :question
  end

  it 'should belong_to :exam' do
    expect(subject).to belong_to :exam
  end
end
