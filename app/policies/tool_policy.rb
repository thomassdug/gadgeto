class ToolPolicy < ApplicationPolicy
  
  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def mytools?
    return true
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end  
end
