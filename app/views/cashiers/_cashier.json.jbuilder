json.extract! cashier, :id
json.client cashier.client.name if cashier.client
json.user cashier.user.name if cashier.client
json.therapy cashier.therapy.name if cashier.client
json.url cashier_url(cashier, format: :json)
