class InterestsController < ApplicationController
  def show
    @interest = Interest.friendly.find(params[:id])
    authorize @interest
  end
end
