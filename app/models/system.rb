class System < ActiveRecord::Base
  belongs_to :angryman
  self.inheritance_column = nil
end
