class Comment < ActiveRecord::Base
  attr_accessible :body, :quiz_id, :user_id
  belongs_to :user
end
