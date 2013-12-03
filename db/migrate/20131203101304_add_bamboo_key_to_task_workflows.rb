class AddBambooKeyToTaskWorkflows < ActiveRecord::Migration
  def change
    add_column :task_workflows, :bamboo_key, :string
  end
end
