class RemovePortFromAssistSystem < ActiveRecord::Migration
  def change
    remove_column :assist_systems, :port, :string
  end
end
