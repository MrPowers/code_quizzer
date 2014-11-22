class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :username

  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :presence => true
  validates :username, :length => { :minimum => 6 }

end
