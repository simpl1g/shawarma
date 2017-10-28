json.extract! order, :id, :delivery_id, :user_id, :preferred_payment_method, :created_at, :updated_at
json.url order_url(order, format: :json)
