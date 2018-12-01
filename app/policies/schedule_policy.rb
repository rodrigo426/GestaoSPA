class SchedulePolicy < ApplicationPolicy
  

  def index?
    user.gerente? || user.recepcionista? || user.tecnico?
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
