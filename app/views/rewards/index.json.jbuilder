json.array!(@rewards) do |reward|
  json.extract! reward, :name, :desc, :photo, :amount
  json.url reward_url(reward, format: :json)
end
