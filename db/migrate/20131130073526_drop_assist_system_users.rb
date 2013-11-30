class DropAssistSystemUsers < ActiveRecord::Migration
  def change
    drop_table :assist_system_users
  end
end
