class RemoveDiagramGeneratedFromTaskWorkflowDefinitions < ActiveRecord::Migration
  def change
    remove_column :task_workflow_definitions, :diagram_generated, :boolean
  end
end
