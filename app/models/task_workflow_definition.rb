require 'workflow/draw'
require 'FileUtils'

class TaskWorkflowDefinition < ActiveRecord::Base
	before_save :generate_diagram
	before_destroy :clear_generated_diagram
	def generate_diagram
		Workflow::Draw::workflow_diagram(('AngrymanWorkflow::Tasks::' + self.model_name).constantize, :path => './public/images/task_workflow_definitions', :name => self.model_name )
	end
	def clear_generated_diagram
		FileUtils.rm(Rails.root.join("public", "images/task_workflow_definitions" , self.model_name + '.png').to_s)
	end
end
