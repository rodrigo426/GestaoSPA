class UserPolicy < ApplicationPolicy

  def index?
    user.gerente? || user.recepcionista?
  end

  def edit?
    user.gerente?
  end

  def create?
    user.gerente?
  end

  def update?
    user.gerente?
  end

  def destroy?
    user.gerente?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
