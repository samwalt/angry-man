class AiderSystemController < ApplicationController

  def index
    @system = System.find(params[:system_id])
    if @system.instance_of? Jira
      @aiderSystem = @system.becomes(Jira).aider_system
    end

  end

  def show

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
