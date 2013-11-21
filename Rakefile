# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

AngryMan::Application.load_tasks

namespace :doc do
  desc "Generate a workflow graph for a model passed e.g. as 'MODEL=Order'."
  task :workflow => :environment do
    require 'workflow/draw'
    require 'tasks/task'
    Workflow::Draw::workflow_diagram(ENV['model'].constantize)
  end
end

