json.array!(@task_workflow_definitions) do |task_workflow_definition|
  json.extract! task_workflow_definition, :model_name, :diagram_generated, :description
  json.url task_workflow_definition_url(task_workflow_definition, format: :json)
end
