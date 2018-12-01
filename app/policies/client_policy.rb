class ClientPolicy < ApplicationPolicy

  def index?
    user.gerente? || user.recepcionista? || user.tecnico?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
