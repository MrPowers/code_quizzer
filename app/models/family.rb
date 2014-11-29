class Family < ActiveRecord::Base
  has_many :topics, :dependent => :destroy
  validates :page_title, length: {maximum: 45}

  def self.exam_counts(user_id)
    records = Exam.where(:user_id => user_id).select(%q{
      quiz_id,
      sum(case when is_graded then 1 else 0 end) graded,
      sum(case when is_canceled then 1 else 0 end) canceled,
      sum(case when is_graded IS NULL and is_canceled IS NULL then 1 else 0 end) in_progress
    }).group("quiz_id")
    records.inject({}) {|m, h| m[h["quiz_id"]] = h.attributes; m}
  end

end
