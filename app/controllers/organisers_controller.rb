class OrganisersController < ApplicationController
  def show
    @organiser = Organiser.friendly.find(params[:id])
    authorize @organiser
  end
end
