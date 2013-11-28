class CreateAvatarsForRailsAngryman < ActiveRecord::Migration
  def up    
    add_attachment :angrymen, :logo
  end
  
  def self.down
    remove_attachment :angrymen, :logo
  end
end
