class CreateTaskWorkflowDefinitions < ActiveRecord::Migration
  def change
    create_table :task_workflow_definitions do |t|
      t.string :model_name
      t.boolean :diagram_generated
      t.string :description

      t.timestamps
    end
  end
end
