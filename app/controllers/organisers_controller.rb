class OrganisersController < ApplicationController
  def show
    @organiser = Organiser.friendly.find(params[:id])
  end
end
