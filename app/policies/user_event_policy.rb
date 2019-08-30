class UserEventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def update?
    true
  end

  def destroy?
    true
  end

  private

  def user_is_owner_or_admin?
    @current_user || @current_user.admin
  end
end
