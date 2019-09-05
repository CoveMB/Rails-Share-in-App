class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    set_cookie
    @interest_categories = policy_scope(InterestCategory)
    @events = policy_scope(Event)
    geocoded = @events.filter(&:geocoded?)
    @markers = geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        categories: event.interests.pluck(:name),
        image_url: helpers.asset_url(event.interest_categories.first.icon + ".png"),
        event_path: organiser_event_path(event.organiser, event)
      }
    end
  end

  def show
    set_cookie
    @event = Event.friendly.find(params[:id])
    authorize @event
  end
end
