require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { Comment.reflect_on_association(:user).macro.should eq(:belongs_to) }
end
