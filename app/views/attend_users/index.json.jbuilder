json.array!(@attend_users) do |attend_user|
  json.extract! attend_user, :user_id, :event_id, :status
  json.url attend_user_url(attend_user, format: :json)
end
