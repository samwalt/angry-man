class System < ActiveRecord::Base
  belongs_to :angryman
  self.inheritance_column = nil

  def config_ok?

  end
end
