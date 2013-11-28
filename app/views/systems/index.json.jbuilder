json.array!(@systems) do |system|
  json.extract! system, :name, :type, :description, :angryman_id
  json.url system_url(system, format: :json)
end
