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
		stash_key = create_feature_branch
		task.stash_key = stash_key

		# build environment
		bamboo_key = build_environment
		task.bamboo_key = bamboo_key
	end

	def self.fix_jira_issue(jira_key)
		task = TaskWorkflows.find_by(jira_key: jira_key)
		task.developer_submit!
	end

	def self.push_code(stash_key)
		task = TaskWorkflows.find_by(stash_key: stash_key)
		task.push!
	end
end
