require 'workflow'

class Angryman < ActiveRecord::Base
	acts_as_avatarable

	has_many :systems

end
