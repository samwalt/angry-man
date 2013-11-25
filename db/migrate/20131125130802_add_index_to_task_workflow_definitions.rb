class AddIndexToTaskWorkflowDefinitions < ActiveRecord::Migration
  def change
    add_index :task_workflow_definitions, :model_name, unique: true
  end
end
