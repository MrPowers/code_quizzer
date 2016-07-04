class Topic < ActiveRecord::Base
  has_many :quizzes, :dependent => :destroy
  belongs_to :family
  belongs_to :subject
  validates :slug, presence: true

  def to_param
    "#{slug}".parameterize
  end
end
