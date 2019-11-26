class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show]

  def show
    set_cookie
    @user = User.find(params[:id])
    authorize @user
  end
end
