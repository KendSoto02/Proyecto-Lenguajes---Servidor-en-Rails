json.array! @orders do |order|
    json.id order.id
    json.date order.date
    json.quantity order.quantity
    json.name "#{order.client.name}"
    json.name "#{order.dish.name}" 
end