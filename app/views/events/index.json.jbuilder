json.array!(@events) do |event|
  json.extract! event, :title, :body, :date, :place, :url, :user_id
  json.url event_url(event, format: :json)
end
