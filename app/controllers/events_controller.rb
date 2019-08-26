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
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
  end

  def show
    @event = Event.friendly.find(params[:id])
    authorize @event
  end
end
