class Question < ActiveRecord::Base
  attr_accessible :answer, :body, :test_id
  belongs_to :test
end
