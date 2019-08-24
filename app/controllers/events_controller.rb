class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    p request.ip
    p request.location
    p request.location.city
    @events = policy_scope(Event)
    @geocoded = @events.filter { |item| item.user.longitude && item.user.latitude }
    @markers = @geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @event = Event.friendly.find(params[:id])
  end
end
