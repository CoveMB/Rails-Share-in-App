class ChatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @user.existing_chats_users
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def index?
    true
  end

  private

  def user_is_owner_or_admin?
    return true if user == record.user || user.admin
  end
end
