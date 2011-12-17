class StatusesController < ApplicationController
  respond_to :html, :json 

  def home_timeline
    @statuses = current_user.home_timeline params
    render json: @statuses
  end
end
