# Controls access of different parts of the site for different users
#
# * Users that are not logged in can read everything
# * Users that are "admin" (I set this in the command line) can do anything to the app
# * Users that logged in and create a test can edit, destroy, and create new tests
class Ability
  include CanCan::Ability

  def initialize(user)
    # Users that are not logged in don't exist so they are nil.  These users can only read.
    if user.nil?
      can :read, :all
      cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
    # Users that are logged in and are admin can read, create, and delete anything.
    elsif user.role == "admin"
      can :manage, :all
    # Users that are logged in and are not admin can create quizzes, 
    # create questions for the quizzes they create, delete questions,
    # for the quizzes they create, and update questions for the 
    # quizzes they create
    elsif user.role = "caitlin"
      author_rights(user)
      can :create, Topic
    elsif user.role == "author"
      author_rights(user)
    end
  end

  def author_rights(user)
    can :read, :all
    cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
    can :create, Quiz
    can :create, Question, :quiz => { :user_id => user.id } #author can update if user_id in quizzes table equals the author's user_id
    can :destroy, Question do |question|
      question.try(:user) == user
    end
    can :update, Question do |question|
      question.try(:user) == user
    end
  end
end
