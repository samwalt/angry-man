class RemoveHostFromAssistSystem < ActiveRecord::Migration
  def change
    remove_column :assist_systems, :host, :string
  end
end
