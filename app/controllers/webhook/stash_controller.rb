class Webhook::StashController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def create
    @params = params
    render :nothing => true
  end

  def index

  end
end
