class CreateServers < ActiveRecord::Migration
    def change
        create_table :servers do |t|
          t.string :code, :unique=>true, :limit=>2 # 服务的代号
          t.string :service, :limit=>10  #Jira, Stash, Bamboo, Crucible
          t.string :ip, :limit=>15
          t.string :port, :limit=>5
    
          t.timestamps
        end
    end
end