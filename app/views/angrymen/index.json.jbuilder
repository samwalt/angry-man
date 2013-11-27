json.array!(@angrymen) do |angryman|
  json.extract! angryman, :nick
  json.url angryman_url(angryman, format: :json)
end
