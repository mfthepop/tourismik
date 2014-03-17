json.array!(@ragisterd_users) do |ragisterd_user|
  json.extract! ragisterd_user, :id, :name
  json.url ragisterd_user_url(ragisterd_user, format: :json)
end
