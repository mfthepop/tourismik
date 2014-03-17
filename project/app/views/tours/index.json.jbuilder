json.array!(@tours) do |tour|
  json.extract! tour, :id, :tour_id, :departure, :qourum
  json.url tour_url(tour, format: :json)
end
