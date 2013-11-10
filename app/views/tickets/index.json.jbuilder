json.array!(@tickets) do |ticket|
  json.extract! ticket, :uid, :consumer_id, :reward_id, :used_time, :is_used
  json.url ticket_url(ticket, format: :json)
end
