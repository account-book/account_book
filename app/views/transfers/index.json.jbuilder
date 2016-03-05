json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :amount, :tansfered_at, :transfer_group_id, :user_id, :comment, :category_id
  json.url transfer_url(transfer, format: :json)
end
