class UserStatisticsController < ApplicationController
  def index
    users = User.where(created_at: 90.days.ago..Time.now).order("created_at desc")
    users_by_date = users.group_by {|users| users.created_at.to_date}
    @grouped_users = users_by_date.inject({}) {|memo, (date, users)| memo[date] = users.count; memo}
  end
end
