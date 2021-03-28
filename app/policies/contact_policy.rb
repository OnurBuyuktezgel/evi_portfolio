class ContactPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user.admin)
    end
  end

  def create?
    true
  end

  def show?
    admin?
  end

  def update?
    admin?
  end

  def destroy?
    admin?
  end

  private

  def admin?
    user == user.admin
  end
end
