json.array!(@locations) do |location|
  json.extract! location, :id, :name, :detail
  json.url location_url(location, format: :json)
end
