class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :presence => true
  validates :username, :length => { :minimum => 6 }
end
