class Topic < ActiveRecord::Base
  attr_accessible :name, :family_id, :slug
  has_many :quizzes, :dependent => :destroy
  belongs_to :family
  validates :slug, presence: true

  def to_param
    "#{slug}".parameterize
  end
end
