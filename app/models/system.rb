class System < ActiveRecord::Base
  belongs_to :angryman
  has_one :aider_system

  self.inheritance_column = nil

  def config_ok?
    self.aider_system
  end
end
