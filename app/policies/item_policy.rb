class ItemPolicy < ApplicationPolicy

  def edit?
    user.gerente? || user.terapeuta? || user.tecnico?
  end

  def new?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
