class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    p request.ip
    p request.location.city

    @events = Event.geocoded

    @markers = @events.map do |event|
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
