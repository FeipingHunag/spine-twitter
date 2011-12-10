class AppController < ApplicationController
  before_filter :require_user
  respond_to :html, :json

  def index
  end

  def home_timeline
    @status = current_user.home_timeline
    respond_with @status
  end

end
