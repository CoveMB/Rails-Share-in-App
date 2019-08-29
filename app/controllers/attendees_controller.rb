class AttendeesController < ApplicationController
  def update
    @attendee = User.find(params[:id])
    authorize @attendee
    event = Event.friendly.find(params[:event_id])
    @attendee.events << event
    if @attendee.save!
    else
    end
  end
end
