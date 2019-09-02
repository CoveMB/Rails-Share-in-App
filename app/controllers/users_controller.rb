class UsersController < ApplicationController
  def show
    cookies[:user_id] = current_user.id if current_user
    @user = User.find(params[:id])
    authorize @user
  end
end
