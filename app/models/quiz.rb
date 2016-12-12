class Quiz < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :exams
  has_many :videos
  belongs_to :topic

  validates :slug, presence: true, uniqueness: true
  validates :page_title, length: {maximum: 45}

  def to_param
    "#{slug}".parameterize
  end
end
