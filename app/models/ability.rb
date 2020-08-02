class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       #for each new user that has the role of admin manage all otherwise they can read all
       if user.has_role? :admin 
         can :manage, :all
       else
         can :read, :all
       end
   
  end
end
