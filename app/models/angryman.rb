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
		notify_code_review
	end

	def self.push_code(stash_key)
		task = TaskWorkflows.find_by(stash_key: stash_key)
		add_to_changeset
		task.push!
	end

	def self.review(status)
		task = TaskWorkflow.find_by(crucible_key: crucible_key)
		if status.eql?('review_pass')
			task.review_pass!
		end

		if status.eql?('review_not_pass')
			task.review_not_pass!
		end
	end

end
