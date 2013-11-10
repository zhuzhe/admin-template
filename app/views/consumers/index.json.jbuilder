json.array!(@consumers) do |consumer|
  json.extract! consumer, :phone, :name
  json.url consumer_url(consumer, format: :json)
end
