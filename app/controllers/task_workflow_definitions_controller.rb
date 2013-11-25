class TaskWorkflowDefinitionsController < ApplicationController
  before_action :set_task_workflow_definition, only: [:show, :edit, :update, :destroy]

  # GET /task_workflow_definitions
  # GET /task_workflow_definitions.json
  def index
    @task_workflow_definitions = TaskWorkflowDefinition.all
  end

  # GET /task_workflow_definitions/1
  # GET /task_workflow_definitions/1.json
  def show
  end

  # GET /task_workflow_definitions/new
  def new
    @task_workflow_definition = TaskWorkflowDefinition.new
  end

  # GET /task_workflow_definitions/1/edit
  def edit
  end

  # POST /task_workflow_definitions
  # POST /task_workflow_definitions.json
  def create
    @task_workflow_definition = TaskWorkflowDefinition.new(task_workflow_definition_params)

    respond_to do |format|
      if @task_workflow_definition.save
        format.html { redirect_to @task_workflow_definition, notice: 'Task workflow definition was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_workflow_definition }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_workflow_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_workflow_definitions/1
  # PATCH/PUT /task_workflow_definitions/1.json
  def update
    respond_to do |format|
      if @task_workflow_definition.update(task_workflow_definition_params)
        format.html { redirect_to @task_workflow_definition, notice: 'Task workflow definition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_workflow_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_workflow_definitions/1
  # DELETE /task_workflow_definitions/1.json
  def destroy
    @task_workflow_definition.destroy
    respond_to do |format|
      format.html { redirect_to task_workflow_definitions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_workflow_definition
      @task_workflow_definition = TaskWorkflowDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_workflow_definition_params
      params.require(:task_workflow_definition).permit(:model_name, :diagram_generated, :description)
    end
end
