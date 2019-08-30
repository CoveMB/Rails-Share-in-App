class UserEventsController < ApplicationController
  # before_action :set_user_and_event

  def update
    @user = User.find(params[:id])
    authorize @user
    @event = Event.friendly.find(params[:event_id])
    authorize @event
    @user.events << @event
    @user.save!
  end

  def destroy
    @event = Event.friendly.find(params[:event_id])
    authorize @event
    @event.users.delete(User.find(params[:id]))
  end
end
