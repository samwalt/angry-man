class AddServerConfig < ActiveRecord::Migration
  def up
	  create_table :servers do |t|
		  t.string :code, :unique=>true, :limit=>2 # 服务的代号
    	  t.string :service, :limit=>10  #Jira, Stash, Bamboo, Crucible
		  t.string :ip, :limit=>15
		  t.string :port, :limit=>5
	  end
  end

  def down
	  drop_table :servers
  end
end
