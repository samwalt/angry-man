class DropServers < ActiveRecord::Migration
  def change
    drop_table :servers
  end
end
