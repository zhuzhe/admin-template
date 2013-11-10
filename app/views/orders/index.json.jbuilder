json.array!(@orders) do |order|
  json.extract! order, :consumer_id, :activity_id, :ticket_id
  json.url order_url(order, format: :json)
end
