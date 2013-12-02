class Quiz < ActiveRecord::Base
  attr_accessible :body, :user_id, :description, :topic_id
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  belongs_to :user
  belongs_to :topic
end
