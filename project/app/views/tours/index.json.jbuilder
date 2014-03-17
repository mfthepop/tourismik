json.array!(@tours) do |tour|
  json.extract! tour, :id, :tour_id, :departure, :quorum
  json.url tour_url(tour, format: :json)
end
