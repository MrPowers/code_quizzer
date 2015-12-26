require 'rails_helper'

describe Question,type: :model do

  it { Question.reflect_on_association(:quiz).macro.should  eq(:belongs_to) }
  
end

