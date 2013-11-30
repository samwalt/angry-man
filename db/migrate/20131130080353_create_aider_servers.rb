class CreateAiderServers < ActiveRecord::Migration
  def change
    create_table :aider_servers do |t|
      t.string :name
      t.string :host
      t.string :port

      t.timestamps
    end
  end
end
