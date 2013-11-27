class AngrymenController < ApplicationController
  before_action :set_angryman, only: [:show, :edit, :update, :destroy]

  # GET /angrymen
  # GET /angrymen.json
  def index
    @angrymen = Angryman.all
  end

  # GET /angrymen/1
  # GET /angrymen/1.json
  def show
  end

  # GET /angrymen/new
  def new
    @angryman = Angryman.new
  end

  # GET /angrymen/1/edit
  def edit
  end

  # POST /angrymen
  # POST /angrymen.json
  def create
    @angryman = Angryman.new(angryman_params)

    respond_to do |format|
      if @angryman.save
        format.html { redirect_to @angryman, notice: 'Angryman was successfully created.' }
        format.json { render action: 'show', status: :created, location: @angryman }
      else
        format.html { render action: 'new' }
        format.json { render json: @angryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /angrymen/1
  # PATCH/PUT /angrymen/1.json
  def update
    respond_to do |format|
      if @angryman.update(angryman_params)
        format.html { redirect_to @angryman, notice: 'Angryman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @angryman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /angrymen/1
  # DELETE /angrymen/1.json
  def destroy
    @angryman.destroy
    respond_to do |format|
      format.html { redirect_to angrymen_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_angryman
      @angryman = Angryman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def angryman_params
      params.require(:angryman).permit(:nick)
    end
end
