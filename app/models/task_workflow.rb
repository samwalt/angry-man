require 'workflow'

class TaskWorkflow < ActiveRecord::Base
	def push
		puts "add to changeset"
	end

	def developer_submit
		puts "review code"
	end

	def review_pass
		puts "check every reviewer pass"
	end

	def review_not_pass
		puts 'review not pass, to reopen'
	end

	def test_pass
		puts "test pass, to merge"
	end

	def test_not_pass
		puts 'test not pass, to reopen'
	end

	def merge_success
		puts 'merge success, resolve'
	end

	def merge_failed
		puts 'merge failed, to reopen'
	end	


	include Workflow

	workflow do
		state :new do
			event :push, :transitions_to => :new
			event :developer_submit, :transitions_to => :review
		end

		state :review do
			event :review_pass, :transitions_to => :test
			event :review_not_pass, :transitions_to => :reopen
		end

		state :reopen do
			event :push, :transitions_to => :reopen
			event :developer_submit, :transitions_to => :review
		end

		state :test do
			event :test_pass, :transitions_to => :merge

			event :test_not_pass, :transitions_to => :reopen
		end

		state :merge do
			event :merge_success, :transitions_to => :resolve
			event :merge_failed, :transitions_to => :reopen
		end

		state :resolve do
			puts "modify jira state to resolve"
		end
	end
end
