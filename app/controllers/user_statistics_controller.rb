class UserStatisticsController < ApplicationController
  def index
    @total_users = User.all.count
    @total_exams = Exam.all.count
    @graded_exams = Exam.where(:is_graded => true).count
    @cancelled_exams = Exam.where(:is_canceled => true).count

    @grouped_users = grouped_count(User, {created_at: 90.days.ago..Time.now})
    @grouped_graded_exams = grouped_count(Exam, {created_at: 90.days.ago..Time.now, is_graded: true})
    @grouped_cancelled_exams = grouped_count(Exam, {created_at: 90.days.ago..Time.now, is_canceled: true})
  end

  def grouped_count(klass, query_args)
    records = klass.where(query_args).order("created_at desc")
    by_date = records.group_by {|record| record.created_at.to_date}
    by_date.inject({}) {|memo, (date, record)| memo[date] = record.count; memo}
  end
end
