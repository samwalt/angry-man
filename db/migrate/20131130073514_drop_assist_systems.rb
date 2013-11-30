class DropAssistSystems < ActiveRecord::Migration
  def change
    drop_table :assist_systems
  end
end
