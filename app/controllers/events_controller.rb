class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @interest_categories = policy_scope(InterestCategory)
    @events = policy_scope(Event)
    geocoded = @events.filter(&:geocoded?)
    @markers = geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        categories: event.interests.pluck(:name)
      }
    end
    # if current_user
    #   chats = current_user.chats
    #   @existing_chats_users = policy_scope(Chat)
    #   current_user.new_message = false
    #   current_user.save
    #   @other_users = User.chats.find(params[:other_user])
    #   @chat = Chat.find_by(id: params[:id])
    #   authorize @chat
    #   @message = Message.new
    # end
  end

  def show
    @event = Event.friendly.find(params[:id])
    authorize @event
  end
end
