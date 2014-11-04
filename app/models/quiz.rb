class Quiz < ActiveRecord::Base
  attr_accessible :body, :user_id, :description, :topic_id, :slug, :page_title
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :exams
  has_many :videos
  belongs_to :user
  belongs_to :topic

  validates :slug, presence: true
  validates :page_title, length: {maximum: 45}

  def to_param
    "#{slug}".parameterize
  end
end
