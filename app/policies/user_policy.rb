class UserPolicy < ApplicationPolicy

  def index?
    user.gerente? || user.recepcionista? || user.tecnico?
  end

  def edit?
    user.gerente? || user.tecnico?# || user.recepcionista?
  end

  def create?
    user.gerente? || user.recepcionista? || user.tecnico?
  end

  def destroy?
    user.gerente? || user.tecnico?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
