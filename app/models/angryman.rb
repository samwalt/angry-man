require 'workflow'
require 'angryman/atlassian/stash/git'
require 'angryman/atlassian/bamboo/ci'

class Angryman < ActiveRecord::Base
	acts_as_avatarable

	has_many :systems

	include Git
	include CI

	def self.create_task_workflow(jira_key)
		task = TaskWorkflow.new
		task.jira_key = jira_key

		# create feature branch
		create_feature_branch

		# build environment
		build_environment
	end

end
