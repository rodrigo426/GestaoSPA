class UserPolicy < ApplicationPolicy

  def index?
    user.gerente? || user.recepcionista?
  end

  def edit?
    user.gerente? || user.recepcionista?
  end

  def create?
    user.gerente? || user.recepcionista?
  end

  def update?
    user.gerente? || user.recepcionista?
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
