require 'workflow'

module AngrymanWorkflow

	module Tasks

		class Task
		
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
	end
end
