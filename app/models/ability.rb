class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, :all
    elsif user.role == "admin"
      can :manage, :all
    elsif user.role == "author"
      can :read, :all
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
end
