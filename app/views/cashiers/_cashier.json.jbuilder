json.extract! cashier, :id, :price, :paymment, :paid_value, :paid, :discount, :therapist_value, :created_at, :updated_at
json.client cashier.client.name if cashier.client
json.user cashier.user.name if cashier.client
json.therapy cashier.therapy.name if cashier.client
json.url cashier_url(cashier, format: :json)
json.update_url cashier_path(cashier, method: :patch)
json.cashier_url edit_cashier_path(cashier)
