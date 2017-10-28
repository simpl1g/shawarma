json.extract! delivery, :id, :store_id, :start_at, :close_at, :deliver_at, :discount, :created_by, :card_number, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
