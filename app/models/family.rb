class Family < ActiveRecord::Base
  has_many :topics
  validates :page_title, length: {maximum: 45}
end
