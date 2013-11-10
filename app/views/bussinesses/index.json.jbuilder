json.array!(@bussinesses) do |bussiness|
  json.extract! bussiness, :name, :join_time
  json.url bussiness_url(bussiness, format: :json)
end
