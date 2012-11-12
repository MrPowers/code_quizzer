class Test < ActiveRecord::Base
  attr_accessible :body
  has_many :questions, :dependent => :destroy
end
