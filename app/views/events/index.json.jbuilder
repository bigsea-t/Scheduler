json.array!(@events) do |event|
  json.extract! event, :name, :date
  json.url event_url(event, format: :json)
end