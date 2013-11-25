require 'test_helper'

class TaskWorkflowDefinitionsControllerTest < ActionController::TestCase
  setup do
    @task_workflow_definition = task_workflow_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_workflow_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_workflow_definition" do
    assert_difference('TaskWorkflowDefinition.count') do
      post :create, task_workflow_definition: { description: @task_workflow_definition.description, diagram_generated: @task_workflow_definition.diagram_generated, model_name: @task_workflow_definition.model_name }
    end

    assert_redirected_to task_workflow_definition_path(assigns(:task_workflow_definition))
  end

  test "should show task_workflow_definition" do
    get :show, id: @task_workflow_definition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_workflow_definition
    assert_response :success
  end

  test "should update task_workflow_definition" do
    patch :update, id: @task_workflow_definition, task_workflow_definition: { description: @task_workflow_definition.description, diagram_generated: @task_workflow_definition.diagram_generated, model_name: @task_workflow_definition.model_name }
    assert_redirected_to task_workflow_definition_path(assigns(:task_workflow_definition))
  end

  test "should destroy task_workflow_definition" do
    assert_difference('TaskWorkflowDefinition.count', -1) do
      delete :destroy, id: @task_workflow_definition
    end

    assert_redirected_to task_workflow_definitions_path
  end
end
