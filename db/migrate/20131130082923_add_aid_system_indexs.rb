class AddAidSystemIndexs < ActiveRecord::Migration
  def change
    add_index :aider_systems, [:system_id, :aider_server_id]
  end
end
