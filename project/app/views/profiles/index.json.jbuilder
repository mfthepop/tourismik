json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :surname, :date_of_birth
  json.url profile_url(profile, format: :json)
end
