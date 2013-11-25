class AddDescriptionToTaskWorkflowDefinitions < ActiveRecord::Migration
  def change
    add_column :task_workflow_definitions, :description, :text
  end
end
