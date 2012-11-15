class Quiz < ActiveRecord::Base
  attr_accessible :body, :user_id
  has_many :questions, :dependent => :destroy
  belongs_to :user
end
