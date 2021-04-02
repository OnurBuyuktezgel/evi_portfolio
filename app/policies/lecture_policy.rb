class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user_admin?
  end

  def show?
    true
  end

  def update?
    user_admin?
  end

  def destroy?
    user_admin?
  end

  private

  def user_admin?
    user == record.user || user.admin
  end
end
