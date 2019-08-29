class AttendeePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    check_if_attending
  end

  private

  def check_if_attending
    p "**************************************************"
    p record
    p user
  end
end
