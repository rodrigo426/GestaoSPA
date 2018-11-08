class SchedulePolicy < ApplicationPolicy
  

  def index?
    user.gerente? || user.recepcionista?
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
