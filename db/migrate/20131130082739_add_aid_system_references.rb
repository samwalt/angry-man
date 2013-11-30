class AddAidSystemReferences < ActiveRecord::Migration
  def change
    add_reference :aider_systems, :aider_server
  end
end
