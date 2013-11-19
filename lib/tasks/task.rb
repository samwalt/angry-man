require 'workflow'

class Task
	include Workflow

	workflow do
		state :new do
			puts "create feature branch"
			event :push, :transitions_to => :new do
				puts "add to changeset"
			end
			event :developer_submit, :transitions_to => :review do
				puts "review code"
			end
		end
		state :review do
			event :review_pass, :transitions_to => :test do 
				puts "check every reviewer pass"
			end
			event :review_not_pass, :transitions_to => :reopen do
				puts 'review not pass, to reopen'
			end
		end
		state :reopen do
			puts "modify crucible state to reopen"
			event :push, :transitions_to => :reopen do
				puts "add to changeset"
			end
			event :developer_submit, :transitions_to => :review do
				puts "review code"
			end

		end
		state :test do
			puts "modify jira state to stage"
			event :test_pass, :transitions_to => :merge do
				puts "test pass, to merge"
			end

			event :test_not_pass, :transitions_to => :reopen do
				puts 'test not pass, to reopen'
			end

		end
		state :merge do
			event :merge_success, :transitions_to => :resolve do
				puts 'merge success, resolve'
			end
			event :merge_failed, :transitions_to => :reopen do
				puts 'merge failed, to reopen'
			end
		end
		state :resolve do
			puts "modify jira state to resolve"
			
		end
	end
end

