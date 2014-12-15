class Challenge < ActiveRecord::Base
  after_save do |instance|
    instance.update_column(:slug, question_summary.parameterize)
  end

  def to_param
    "#{slug}".parameterize
  end
end
