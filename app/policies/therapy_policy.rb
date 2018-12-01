class TherapyPolicy < ApplicationPolicy

  def index?
    user.gerente? || user.recepcionista? || user.tecnico?
  end

  def show?
    user.gerente? || user.recepcionista? || user.tecnico?
  end

  def new?
    user.gerente? || user.recepcionista? || user.tecnico?
  end

  def edit?
    user.gerente? || user.recepcionista? || user.tecnico?
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
