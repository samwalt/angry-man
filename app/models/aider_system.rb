class AiderSystem < ActiveRecord::Base
  has_one :aider_server
  belongs_to :system

  attr_accessible :authUsername, :authPassword

end
