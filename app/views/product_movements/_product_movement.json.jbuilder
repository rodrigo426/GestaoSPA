json.extract! product_movement, :id, :product_id, :kind, :price, :quantity, :created_at, :updated_at
json.url product_movement_url(product_movement, format: :json)
