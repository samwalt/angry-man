class AiderSystemController < ApplicationController
  before_action :set_aiderSystem, only: [:show, :edit, :update, :destroy]

  def index
    @system = System.find(params[:system_id])
    @aiderSystem = @system.aider_system
  end

  def show
  end

  def new
    @aiderSystem = AiderSystem.new
  end

  def edit
  end

  def create
    @aiderSystem = AiderSystem.new(aiderSystem_params)
    @angryman = Angryman.find(params[:angryman_id])
    @system = System.find(params[:system_id])
    @aiderSystem.system = @system
    @aiderSystem.aider_server = AiderServer.find_by_name(@system.type)

    respond_to do |format|
      if @aiderSystem.save
        format.html { redirect_to [@angryman, @system, @aiderSystem], notice: 'AiderSystem was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @aiderSystem.update(aiderSystem_params)
        format.html { redirect_to @aiderSystem, notice: 'aiderSystem was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @aiderSystem.destroy
    respond_to do |format|
      format.html {redirect_to angryman_system_aider_system_url}
    end
  end

  private
    def set_aiderSystem
      @aiderSystem = AiderSystem.find(params[:id])
    end

    def aiderSystem_params
      params.require(:aiderSystem).permit(:name, :username, :password)
    end
end
