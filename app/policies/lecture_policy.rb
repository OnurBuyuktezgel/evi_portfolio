class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    admin?
  end

  def show?
    true
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
