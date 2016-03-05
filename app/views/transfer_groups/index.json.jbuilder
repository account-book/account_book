json.array!(@transfer_groups) do |transfer_group|
  json.extract! transfer_group, :id, :place, :user_id
  json.url transfer_group_url(transfer_group, format: :json)
end
