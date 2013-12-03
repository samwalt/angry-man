class CreateTaskWorkflows < ActiveRecord::Migration
  def change
    create_table :task_workflows do |t|
      t.string :jira_key
      t.string :stash_key
      t.string :crucible_key
      t.string :workflow_state

      t.timestamps
    end
  end
end
