class UserOrganisersController < ApplicationController
  # before_action :set_user_and_event

  def update
    @user = User.find(params[:id])
    authorize @user
    @organiser = Organiser.friendly.find(params[:organiser_id])
    authorize @organiser
    @user.organisers << @organiser
    @user.save!
  end

  def destroy
    @organiser = Organiser.friendly.find(params[:organiser_id])
    authorize @organiser
    @organiser.users.delete(User.find(params[:id]))
  end
end
