class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :challenge_users
  has_many :challenges, through: :challenge_users

  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :presence => true
  validates :username, :length => { :minimum => 6 }
end
