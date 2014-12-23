class Challenge < ActiveRecord::Base
  has_many :challenge_users
  has_many :users, through: :challenge_users

  after_save do |instance|
    instance.update_column(:slug, question_summary.parameterize)
  end

  def to_param
    "#{slug}".parameterize
  end
end
