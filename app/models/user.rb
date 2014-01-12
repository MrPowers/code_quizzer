class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :username

  validates :username, :uniqueness => { :case_sensitive => false }
  validates :username, :presence => true
  validates :username, :length => { :minimum => 6 }

  has_many :quizzes
  has_many :questions

  def count_completed_exams_by_quiz(quiz)
    total = quiz.exams.where("user_id = #{self.id} AND status = 'graded'").count
    if total == 0
      ""
    else
      "x#{total}"
    end
  end
end
