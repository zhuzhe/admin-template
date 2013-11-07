json.array!(@activities) do |activity|
  json.extract! activity, :name, :content, :start_time, :end_time, :author, :published
  json.url activity_url(activity, format: :json)
end
