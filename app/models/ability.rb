class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    if user.nil?
      can :read, :all
      cannot :destroy, [Question, Quiz]
      cannot :update, [Question, Quiz]
      cannot :create, [Question, Quiz]
    elsif user.role == "admin"
      can :manage, :all
    elsif user.role == "author"
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
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
end
