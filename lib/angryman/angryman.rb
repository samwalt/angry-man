require 'stash/git'

class Angryman
	include Atlassian::Stash::Git 
	attr_accessor :workflow_hash

	def initialize
		@workflow_hash = Hash.new
	end

	def add_task(issue_key, task)
		@workflow_hash[issue_key] = task
		create_feature_branch

	end
end
