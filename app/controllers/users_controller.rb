class UsersController < ApplicationController
  def show
    set_cookie
    @user = User.find(params[:id])
    authorize @user
  end
end
