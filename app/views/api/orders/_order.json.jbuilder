json.extract! order, :id, :status_order, :date, :quantity, :created_at, :updated_at
json.url order_url(order, format: :json)
