class Ability
  include CanCan::Ability
  def initialize(user)
    # Users that are not logged in don't exist so they are nil.  These users can only read.
    if user.nil?
      can :read, :all
      cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
    # Admin users can read, create, and delete anything.
    elsif user.role == "admin"
      can :manage, :all
    # authors have same rights as guests that are not logged in
    elsif user.role == "author"
      can :read, :all
      cannot :read, Family.where("name = ? OR name = ?", "Books", "Caitlin")
      can :create, Comment
    end
  end
end
