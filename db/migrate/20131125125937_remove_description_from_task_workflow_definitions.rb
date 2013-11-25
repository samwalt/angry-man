class RemoveDescriptionFromTaskWorkflowDefinitions < ActiveRecord::Migration
  def change
    remove_column :task_workflow_definitions, :description, :string
  end
end
