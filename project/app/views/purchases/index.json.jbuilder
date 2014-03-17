json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :purchase_id, :ammount, :date_of_purchase, :num_of_reservatrion
  json.url purchase_url(purchase, format: :json)
end
