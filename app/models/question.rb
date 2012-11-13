class Question < ActiveRecord::Base
  attr_accessible :answer, :body, :test_id, :user_id
  belongs_to :test
  belongs_to :user
end
