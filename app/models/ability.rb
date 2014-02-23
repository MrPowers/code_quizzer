class Ability
  include CanCan::Ability
  def initialize(user)
    # Users that are not logged in don't exist so they are nil.  These users can only read.
    if user.nil?
      can :read, :all
      cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
    # Admin users can read, create, and delete anything.
    elsif user.role == 'admin'
      can :manage, :all
    elsif user.role == 'author'
      can :read, :all
      cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
      can :create, Comment
      can :create, Exam
      can :update, Exam do |exam|
        exam.try(:user) == user
      end
      can :show, Answer
      can :create, Answer
      can :update, Answer do |answer|
        answer.try(:exam).try(:user) == user
      end
    end
  end
end
