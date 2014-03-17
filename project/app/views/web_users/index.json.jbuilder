json.array!(@web_users) do |web_user|
  json.extract! web_user, :id, :user_id, :ip
  json.url web_user_url(web_user, format: :json)
end
