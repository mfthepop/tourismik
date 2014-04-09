json.array!(@pictures) do |picture|
  json.extract! picture, :id, :caption, :date_taken
  json.url picture_url(picture, format: :json)
end
