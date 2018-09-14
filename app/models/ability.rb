class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user
      if user.kind == 'therapist'
        can :access, :rails_admin
        can :dashboard
        can :read, Client
        can :read, PhoneClient
        can :read, PhoneUser
        can :manage, PhoneUser, user_id: user.id
        can :read, User
        can :read, Address
        #can :manage, User, user_id: user.id
      elsif user.kind == 'manager'
        can :manage, :all
      elsif user.kind == 'receptionist'
        can :access, :rails_admin
        can :dashboard
        can :manage, Client
        can :manage, PhoneClient
        can :manage, Address
        can :manage, User
        can :manage, PhoneUser
      end
    end
  end
end