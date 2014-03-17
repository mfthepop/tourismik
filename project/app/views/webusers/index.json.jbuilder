json.array!(@webusers) do |webuser|
  json.extract! webuser, :id, :user_id, :ip
  json.url webuser_url(webuser, format: :json)
end
